<?php

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

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
        // Allow updating composer
        $result = shell_exec('composer update');
        return new JsonResponse([
            'success',
            'output' => $result
        ], 200);
    }

    return new Response('unauthorised', 403);
});
