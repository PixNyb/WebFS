<?php

use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/{page?}', function ($page = 'index') {
    abort_if(!view()->exists("app." . $page), 404);
    $navigation = DB::table('navigation')->get(['text', 'destination']);
    return view('app.' . $page, ['navigation' => $navigation]);
});
