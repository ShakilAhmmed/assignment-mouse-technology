<?php

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

use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return redirect("/login");
});

Auth::routes();

Route::middleware("auth")->group(function () {
    Route::get('/home', [HomeController::class, 'index'])->name('home');
    Route::get("/client_details/{client_id}", [HomeController::class, 'client_details'])->name("client_details");
    Route::post("/key_generate/", [HomeController::class, 'key_generate'])->name("key_generate");
    Route::post("/save_license", [HomeController::class, 'save_license'])->name("save_license");
});
