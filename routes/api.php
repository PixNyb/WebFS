<?php

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
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
        $result = shell_exec('composer update');
        Artisan::call('optimize:clear');

        if (config('app.env') == 'production') {

            // Generate a SQL dump of main database
            shell_exec(
                "mysqldump -u { config('database.connections.mysql.username') } -p{ config('database.connections.mysql.password') } { config('database.connections.mysql.database') } > { storage_path('temp.sql') }"
            );

            // Wipe shadow database
            Artisan::call('db:wipe', ['--database' => 'mysqls']);

            // Apply main database dump on shadow database
            shell_exec(
                "mysqldump -u { config('database.connections.mysqls.username') } -p{ config('database.connections.mysqls.password') } { config('database.connections.mysqls.database') } < { storage_path('temp.sql') }"
            );

            // Wipe the main database and delete the backup
            Artisan::call('db:wipe');
            Storage::delete('temp.sql');

            // Apply new database design to main database
            shell_exec(
                "mysqldump -u { config('database.connections.mysql.username') } -p{ config('database.connections.mysql.password') } { config('database.connections.mysql.database') } < { storage_path('database.sql') }"
            );

            // TODO: Move all possible data to new database
        }

        return new JsonResponse([
            'success',
            'output' => $result
        ], 200);
    }

    return new Response('unauthorised', 403);
});
