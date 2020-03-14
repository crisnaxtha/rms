<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reports', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('session_id')->nullable();
            $table->unsignedInteger('school_class_section_id')->nullable();
            $table->unsignedInteger('exam_id')->nullable();
            $table->unsignedInteger('student_id')->nullable();

            $table->float('obtain_total_th_marks', 10, 2)->nullable();
            $table->float('obtain_total_pr_marks', 10, 2)->nullable();
            $table->float('obtain_total_marks', 10,2)->nullable();
            $table->float('grand_total_marks', 10,2)->nullable();
            $table->float('percentage', 10,1)->nullable();
            $table->float('gpa', 10,1)->nullable();
            $table->string('results')->nullable();
            $table->text('description')->nullable();

            $table->foreign('session_id')->references('id')->on('sessions')
                    ->onDelete('cascade');
            $table->foreign('school_class_section_id')->references('id')->on('school_class_sections')
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
        Schema::dropIfExists('reports');
    }
}
