<?php

use App\Http\Controllers\CourseController;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/backup', function (Request $request) {
    $key = $request->header('X-OTAP-KEY');

    if ($key == config('app.otap_key')) {
        // Create backup
        Artisan::call('backup:run');
        return new Response('success', 200);
    }

    return new Response('unauthorised', 403);
});

Route::get('/install', function (Request $request) {
    $key = $request->header('X-OTAP-KEY');

    if ($key == config('app.otap_key')) {
        // Update composer and optimize artisan
        $result = 'done';
        shell_exec('composer update');
        Artisan::call('optimize:clear');

        // Generate a SQL dump of main database
        shell_exec(
            "mysqldump -h " . config('database.connections.mysql.host') . " -P " . config('database.connections.mysql.port') . " -u " . config('database.connections.mysql.username') . " -p" . config('database.connections.mysql.password') . " " . config('database.connections.mysql.database') . " > " . storage_path('temp.sql')
        );

        // Wipe shadow database
        Artisan::call('db:wipe', ['--database' => 'mysqls']);

        // Apply main database dump on shadow database
        shell_exec(
            "mysql -h " . config('database.connections.mysqls.host') . " -P " . config('database.connections.mysqls.port') . " -u " . config('database.connections.mysqls.username') . " -p" . config('database.connections.mysqls.password') . " " . config('database.connections.mysqls.database') . " < " . storage_path('temp.sql')
        );

        // Wipe the main database and delete the backup
        Artisan::call('db:wipe');
        unlink(storage_path('temp.sql'));

        // Apply new database design to main database if file exists
        if (file_exists(storage_path('database.sql'))) {
            shell_exec(
                "mysql -h " . config('database.connections.mysql.host') . " -P " . config('database.connections.mysql.port') . " -u " . config('database.connections.mysql.username') . " -p" . config('database.connections.mysql.password') . " " . config('database.connections.mysql.database') . " < " . storage_path('database.sql')
            );
        }

        $databaseCurrent = DB::connection('mysql');
        $databaseShadow = DB::connection('mysqls');
        $currentTables = [];

        // Get all tables from new main database
        $tableTableMain = $databaseCurrent->select('SHOW TABLES');
        foreach ($tableTableMain as $table) {
            $columnName = 'Tables_in_' . config('database.connections.mysql.database');
            $table = $table->$columnName;
            $currentTables[$table] = Schema::connection('mysql')->getColumnListing($table);
        }

        // Get all tables from shadow database
        $tableTableShadow = $databaseShadow->select('SHOW TABLES');
        foreach ($tableTableShadow as $table) {
            $columnName = 'Tables_in_' . config('database.connections.mysqls.database');
            $table = $table->$columnName;
            // Match shadow db table to new db table
            if (array_key_exists($table, $currentTables)) {

                // I want absolutely nothing to do with this
                $columnsToTransfer = [];
                $columns = Schema::connection('mysqls')->getColumnListing($table);
                // Get valid columns
                foreach ($columns as $column) {
                    if (in_array($column, $currentTables[$table]))
                        $columnsToTransfer[] = $column;
                }

                // Fill main database with old data
                $queryValues[$table] = $databaseShadow->table($table)->get($columnsToTransfer)->toArray();
                foreach ($queryValues[$table] as $row) {
                    DB::table($table)->insert((array) $row);
                }
            }
        }

        return new JsonResponse([
            'success',
            'output' => $result
        ], 200);
    }

    return new Response("unauthorised", 403);
});

Route::get('/courses', CourseController::class . '@indexAPI');
