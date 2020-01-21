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

        Route::group(['as'=> 'school.', 'prefix' => 'school'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'SchoolsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'SchoolsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'SchoolsController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'SchoolsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'SchoolsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'SchoolsController@destroy']);
        });


        Route::group(['as'=> 'class.', 'prefix' => 'class'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'ClassesController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'ClassesController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'ClassesController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'ClassesController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'ClassesController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'ClassesController@destroy']);
        });

        Route::group(['as'=> 'assign_class.', 'prefix' => 'assign_class'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'AssignClassesController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'AssignClassesController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'AssignClassesController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'AssignClassesController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'AssignClassesController@update']);
            Route::delete('delete',                             ['as'=>'destroy',              'uses'=>'AssignClassesController@destroy']);

            /** Ajax Route */
            Route::post('get_class',                            ['as'=>'getClass',              'uses'=>'AssignSectionController@getSchoolClass']);
        });

        Route::group(['as'=> 'section.', 'prefix' => 'section'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'SectionsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'SectionsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'SectionsController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'SectionsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'SectionsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'SectionsController@destroy']);
        });

        Route::group(['as'=> 'assign_section.', 'prefix' => 'assign_section'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'AssignSectionController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'AssignSectionController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'AssignSectionController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'AssignSectionController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'AssignSectionController@update']);
            Route::delete('delete',                             ['as'=>'destroy',              'uses'=>'AssignSectionController@destroy']);

            /** Ajax Route */
            Route::post('get_class',                             ['as'=>'getClass',              'uses'=>'AssignSectionController@getSchoolClass']);
            Route::post('get_section',                           ['as'=>'getSection',              'uses'=>'AssignSectionController@getSchoolClassSection']);
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
            Route::delete('delete',                             ['as'=>'destroy',              'uses'=>'AssignSubjectsController@destroy']);

            /** Ajax Route */
            Route::post('get_section',                               ['as'=>'getSection',              'uses'=>'AssignSubjectsController@getSchoolClassSection']);
            Route::post('get_subject',                               ['as'=>'getSubject',              'uses'=>'AssignSubjectsController@getSchoolClassSectionSubjects']);
        });

        Route::group(['as'=> 'exam.', 'prefix' => 'exam'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'ExamListController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'ExamListController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'ExamListController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'ExamListController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'ExamListController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'ExamListController@destroy']);
        });

        Route::group(['as'=> 'exam_schedule.', 'prefix' => 'exam_schedule'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'ExamScheduleController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'ExamScheduleController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'ExamScheduleController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'ExamScheduleController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'ExamScheduleController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'ExamScheduleController@destroy']);

            /** Ajax Route */
            Route::post('get_subject',                        ['as'=>'getSubject',       'uses'=>'ExamScheduleController@getSchoolClassSectionSubjects']);
            Route::post('get_exam',                           ['as'=>'getExam',              'uses'=>'ExamScheduleController@getExamSchedule']);
        });

        Route::group(['as'=> 'grade.', 'prefix' => 'grade'], function(){
            Route::get('',                                      ['as'=>'index',              'uses'=>'GradesController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'GradesController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'GradesController@store']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'GradesController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'GradesController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'GradesController@destroy']);
        });

        Route::group(['as'=> 'student.', 'prefix' => 'student'], function(){
            Route::any('search',                                ['as'=>'index',              'uses'=>'StudentsController@index']);
            Route::get('create',                                ['as'=>'create',              'uses'=>'StudentsController@create']);
            Route::post('',                                     ['as'=>'store',              'uses'=>'StudentsController@store']);
            Route::get('{id}/show',                             ['as'=>'show',              'uses'=>'StudentsController@show']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'StudentsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'StudentsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'StudentsController@destroy']);

            Route::any('import',                               ['as'=>'import',                'uses'=>'StudentsController@import']);
        });

        Route::group(['as'=> 'marks.', 'prefix' => 'marks'], function(){
            Route::any('',                                      ['as'=>'index',              'uses'=>'ExamResultsController@index']);
            Route::any('create',                                ['as'=>'create',              'uses'=>'ExamResultsController@create']);
            Route::post('store',                                ['as'=>'store',              'uses'=>'ExamResultsController@store']);
            Route::get('{id}/show',                             ['as'=>'show',              'uses'=>'ExamResultsController@show']);
            Route::get('{id}/edit',                             ['as'=>'edit',              'uses'=>'ExamResultsController@edit']);
            Route::put('{id}',                                  ['as'=>'update',              'uses'=>'ExamResultsController@update']);
            Route::delete('{id}',                               ['as'=>'destroy',              'uses'=>'ExamResultsController@destroy']);
        });

    });

});
