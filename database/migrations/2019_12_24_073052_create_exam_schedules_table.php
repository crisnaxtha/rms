<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExamSchedulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exam_schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('school_id')->nullable();
            $table->unsignedInteger('session_id')->nullable();
            $table->unsignedInteger('exam_id')->nullable();
            $table->unsignedInteger('class_section_subject_id')->nullable();
            $table->date('date_of_exam')->nullable();
            $table->time('start_to')->nullable();
            $table->time('end_from')->nullable();
            $table->string('room_no')->nullable();
            $table->integer('full_marks')->nullable();
            $table->integer('passing_marks')->nullable();
            $table->text('description')->nullable();
            $table->boolean('status')->default(0)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('exam_schedules');
    }
}
