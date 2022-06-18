<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CourseController;
use Illuminate\Foundation\Application;
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

Route::get('/{page?}', function ($page = 'index') {
    abort_if(!view()->exists("app." . $page), 404);
    $navigation = DB::table('navigation')->get(['text', 'destination']);
    return view('app.' . $page, ['navigation' => $navigation]);
});

/*Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});*/

Route::prefix('admin')->group(function () {
    Route::get('/home', function () {
        return Inertia::render('Dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');/*
    Route::get('/courses', CourseController::class.'@index')->name('courses')->middleware(['auth', 'verified']);
    Route::get('/courses/create', CourseController::class.'@create')->name('courses.create')->middleware(['auth', 'verified']);
    Route::post('/courses', CourseController::class.'@store')->name('courses.store')->middleware(['auth', 'verified']);*/
    Route::resource('courses', CourseController::class, ['middleware' => ['auth', 'verified']]);
    Route::post('courses/activity/{course}', CourseController::class.'@activity')->name('courses.activity')->middleware(['auth', 'verified']);

    Route::resource('categories', CategoryController::class, ['middleware' => ['auth', 'verified']]);
});

require __DIR__.'/auth.php';
