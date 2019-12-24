<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClassSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('class_sections', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('school_id')->nullable();
            $table->integer('class_id')->unsigned()->nullable();
            $table->integer('section_id')->unsigned()->nullable();
            $table->foreign('class_id')->references('id')->on('my_classes')
                ->onDelete('cascade');
            $table->foreign('section_id')->references('id')->on('sections')
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
        Schema::dropIfExists('class_sections');
    }
}
