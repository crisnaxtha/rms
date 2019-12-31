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

        Route::group(['as'=> 'class.', 'prefix' => 'class'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'ClassesController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'ClassesController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'ClassesController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'ClassesController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'ClassesController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'ClassesController@destroy']);
            Route::get('assign_section/{id}',                   ['as'=>'assign',                'uses'=>'ClassesController@assignSection']);
            Route::post('assign_section/update/{id}',           ['as'=>'assign.update',        'uses'=>'ClassesController@updateAssignSection']);
        });

        Route::group(['as'=> 'section.', 'prefix' => 'section'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'SectionsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'SectionsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'SectionsController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'SectionsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'SectionsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'SectionsController@destroy']);
        });

        Route::group(['as'=> 'subject.', 'prefix' => 'subject'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'SubjectsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'SubjectsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'SubjectsController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'SubjectsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'SubjectsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'SubjectsController@destroy']);
        });

        Route::group(['as'=> 'assign_subject.', 'prefix' => 'assign_subject'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'AssignSubjectsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'AssignSubjectsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'AssignSubjectsController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'AssignSubjectsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'AssignSubjectsController@update']);
            Route::delete('delete',                               ['as'=>'destroy',              'uses'=>'AssignSubjectsController@destroy']);

            /** Ajax Route */
            Route::post('getSection',                               ['as'=>'getSection',              'uses'=>'AssignSubjectsController@getClassSection']);
            Route::post('getSubject',                               ['as'=>'getSubject',              'uses'=>'AssignSubjectsController@getClassSectionSubjects']);
        });

    });

});
