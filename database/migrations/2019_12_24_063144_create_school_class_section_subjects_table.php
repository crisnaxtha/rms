<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolClassSectionSubjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('school_class_section_subjects', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('session_id')->nullable();
            // $table->unsignedInteger('school_id')->nullable();
            $table->unsignedInteger('school_class_section_id')->nullable();
            $table->unsignedInteger('subject_id')->nullable();
            $table->text('description')->nullable();
            $table->boolean('status')->default(1);
            $table->foreign('school_class_section_id')->references('id')->on('school_class_sections')
                    ->onDelete('cascade');
            $table->foreign('subject_id')->references('id')->on('subjects')
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
        Schema::dropIfExists('class_section_subjects');
    }
}
