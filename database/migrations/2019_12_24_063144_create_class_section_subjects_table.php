<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClassSectionSubjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('class_section_subjects', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('school_id')->nullable();
            $table->unsignedInteger('session_id')->nullable();
            $table->unsignedInteger('class_section_id')->nullable();
            $table->unsignedInteger('subject_id')->nullable();
            $table->text('description')->nullable();
            $table->boolean('status')->default(1)->nullable();
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
