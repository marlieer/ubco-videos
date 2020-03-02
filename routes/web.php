<?php

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

Route::get('/', 'VideoController@index')->name('videos');
Route::get('/manage', 'VideoController@manage')->name('videos.manage');
Route::get('/managedeleted', 'VideoController@manageDeleted')->name('videos.manageDeleted');
Route::delete('/videos/{video}', 'VideoController@destroy');
Route::post('/videos/restore/{video}', 'VideoController@restore');
Route::get('/videosbytopic/{topic}', 'VideoController@indexbytopic');
Route::get('/videosbytopic/{topic}/{sortby}', 'VideoController@indexbytopic');
Route::post('count', 'VideoController@count');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resources([
    'users' => 'UserController',
    'myvideos' => 'UserVideosController',
    'topics' =>'SearchlistController'
]);
