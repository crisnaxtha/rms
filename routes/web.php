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

Auth::routes();

Route::group(['as'=> 'dsms.', 'namespace'=>'Dsms', 'middleware'=>['auth', 'status', ]], function(){

    Route::get('/',                 function() {
        return redirect('/dashboard');
    });

    Route::group(['prefix' => 'dashboard'], function(){
        Route::get('/',                     ['as'=>'dashboard',         'uses' => 'HomeController@index']);

    });

    Route::group(['prefix' => 'class'], function(){
        Route::get('',                                      ['as'=>'index',              'uses'=>'ClassesController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'ClassesController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'ClassesController@store']);
        Route::get('{class}/edit',                       ['as'=>'edit',              'uses'=>'ClassesController@edit']);
        Route::put('{class}',                            ['as'=>'update',              'uses'=>'ClassesController@update']);
        Route::delete('{class}',                         ['as'=>'destroy',              'uses'=>'ClassesController@destroy']);

    });

    Route::group(['prefix' => 'section'], function(){
        Route::get('',                                      ['as'=>'index',              'uses'=>'SectionsController@index']);
        Route::get('create',                                ['as'=>'create',              'uses'=>'SectionsController@create']);
        Route::post('',                                     ['as'=>'store',              'uses'=>'SectionsController@store']);
        Route::get('{class}/edit',                       ['as'=>'edit',              'uses'=>'SectionsController@edit']);
        Route::put('{class}',                            ['as'=>'update',              'uses'=>'SectionsController@update']);
        Route::delete('{class}',                         ['as'=>'destroy',              'uses'=>'SectionsController@destroy']);

    });
});
