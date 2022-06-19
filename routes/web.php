<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\RegisterController;
use Illuminate\Foundation\Application;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\NewsController;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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

Route::get('/news', [NewsController::class, 'serve']);
Route::get('/menu', [MenuController::class, 'serve']);
Route::get('/menu/pdf', [MenuController::class, 'pdf']);

Route::get('/{page?}', function ($page = 'index') {
    abort_if(!view()->exists("app." . $page), 404);
    return view('app.' . $page, ['navigation' => DB::table('navigation')->get(['text', 'destination'])]);
});
Route::prefix('admin')->group(function () {
    Route::get('/home', function () {
        return Inertia::render('Dashboard', ['admin' => Auth::user()->isAdmin]);
    })->middleware(['auth', 'verified'])->name('dashboard');
    Route::resource('courses', CourseController::class, ['middleware' => ['auth', 'verified']]);
    Route::post('courses/activity/{course}', CourseController::class . '@activity')->name('courses.activity')->middleware(['auth', 'verified']);

    Route::resource('categories', CategoryController::class, ['middleware' => ['auth', 'verified']]);
    Route::resource('menu', MenuController::class, ['middleware' => ['auth', 'verified']]);
});

Route::prefix('register')->group(function () {
    Route::get('/index', RegisterController::class . '@index')->name('cashregister.index')->middleware(['auth', 'verified']);
    Route::get('/orders', RegisterController::class . '@orders')->name('cashregister.orders')->middleware(['auth', 'verified']);
    Route::get('/order/{id}', RegisterController::class . '@order')->name('order.view')->middleware(['auth', 'verified']);
});

require __DIR__ . '/auth.php';
Route::get('/locale/{locale}', [LanguageController::class, 'SwitchLanguage']);
