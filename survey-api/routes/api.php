<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

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
Route::group(['middleware' => ['json.response']], function () {
	Route::middleware('auth:api')->get('/user', function (Request $request) {
	    return $request->user();
	});
	Route::post('/login',[UserController::class, 'login'])->name('login');
	Route::post('/register',[UserController::class, 'Register'])->name('Register');
	Route::post('/otpvalidate',[UserController::class, 'otpValidation'])->name('login');
	Route::post('/reSendOtp',[UserController::class, 'reSendOtp'])->name('reSendOtp');	

	Route::get('/getExistingContacts',[UserController::class, 'getExistingContacts'])->name('getExistingContacts');
	Route::post('/profileEdit',[UserController::class, 'profileEdit'])->name('profileEdit');    	
	Route::post('/updateLocation',[UserController::class, 'updateLocation'])->name('updateLocation');
	Route::post('/settings',[UserController::class, 'Settings'])->name('Settings');
	Route::post('/nearby',[UserController::class, 'Nearby'])->name('Nearby');
	Route::post('/getProfile',[UserController::class, 'getProfile'])->name('getProfile');
	Route::post('/getSettings',[UserController::class, 'getSettings'])->name('getSettings');	    
	Route::post('/imageUpload',[UserController::class, 'ImageUpload'])->name('ImageUpload');		
	Route::post('/profilepicupload',[UserController::class, 'ProfilePicUpload'])->name('ProfilePicUpload');	
	Route::get('/countryCodes',[UserController::class, 'CountryCodes'])->name('CountryCodes');		

	 
	//for survey list    
	Route::post('/surveylist',[UserController::class, 'surveylist'])->name('surveylist');	
	Route::post('/surveycreate',[UserController::class, 'Surveycreate'])->name('Surveycreate');	
	Route::post('/surveydetails',[UserController::class, 'survey_details'])->name('survey_details');	
	Route::get('/Numofqtns',[UserController::class, 'Numofqtns'])->name('Numofqtns');	
	Route::get('/Questionstype',[UserController::class, 'Questionstype'])->name('Questionstype');	
	Route::post('/surveyedit',[UserController::class, 'SurveyEdit'])->name('SurveyEdit');	
	Route::post('/surveydelete',[UserController::class, 'SurveyDelete'])->name('SurveyDelete');	
	Route::post('/questiondelete',[UserController::class, 'QuestionDelete'])->name('QuestionDelete');	
	Route::post('/optionsdelete',[UserController::class, 'OptionsDelete'])->name('OptionsDelete');	
	Route::post('/surveyusers',[UserController::class, 'SurveyUsers'])->name('SurveyUsers');	
	Route::post('/surveyUserqstnOpt',[UserController::class, 'SurveyUserqstnOpt'])->name('SurveyUserqstnOpt');	
	Route::post('/surveyPublish',[UserController::class, 'SurveyPublish'])->name('SurveyPublish');	
	Route::post('/Surveydata',[UserController::class, 'Surveydata'])->name('Surveydata');	
	Route::post('/survey_optionscount',[UserController::class, 'SurveyOptionsCount'])->name('SurveyOptionsCount');	
	Route::post('/getNotifications',[UserController::class, 'getNotifications'])->name('getNotifications');	
	Route::post('/surveyGraph',[UserController::class, 'SurveyGraph'])->name('SurveyGraph');	
	Route::post('/visitnotification',[UserController::class, 'VisitNotification'])->name('VisitNotification');	
});