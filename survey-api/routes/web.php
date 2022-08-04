<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

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

Route::get('/', function () {
    return view('welcome');
});

//Survey Dashboard
Route::get('/dashboard',[UserController::class, 'survey_dashboard'])->name('survey_dashboard');	
Route::get('/survey_details',[UserController::class, 'survey_dashboard_details'])->name('survey_dashboard_details');	
Route::get('/survey_download/{survey_id}',[UserController::class, 'survey_download'])->name('survey_download');

