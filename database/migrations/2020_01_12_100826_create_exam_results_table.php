<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExamResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exam_results', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('school_id')->nullable();
            $table->string('theory_attendance')->nullable();
            $table->string('practical_attendance')->nullable();
            $table->unsignedInteger('session_id')->nullable();
            $table->unsignedInteger('school_class_section_subject_id')->nullable();
            $table->unsignedInteger('exam_id')->nullable();
            $table->unsignedInteger('student_id')->nullable();
            $table->float('theory_get_marks', 10, 2)->nullable();
            $table->string('theory_grade')->nullable();
            $table->float('practical_get_marks', 10, 2)->nullable();
            $table->string('practical_grade')->nullable();
            $table->float('total_marks', 10,2)->nullable();
            $table->string('final_grade')->nullable();
            $table->float('grade_point', 10,1)->nullable();
            $table->float('grade_credit_hour', 10,2)->nullable();
            $table->text('description')->nullable();
            $table->boolean('status')->nullable();
            $table->foreign('session_id')->references('id')->on('sessions')
                    ->onDelete('cascade');
            $table->foreign('school_class_section_subject_id')->references('id')->on('school_class_section_subjects')
                    ->onDelete('cascade');
            $table->foreign('exam_id')->references('id')->on('exams')
                    ->onDelete('cascade');
            $table->foreign('student_id')->references('id')->on('students')
                    ->onDelete('cascade');
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
        Schema::dropIfExists('exam_results');
    }
}
