<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolClassSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('school_class_sections', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('school_id')->nullable();
            $table->unsignedInteger('school_class_id')->nullable();
            $table->unsignedInteger('section_id')->nullable();
            $table->foreign('school_class_id')->references('id')->on('school_classes')
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
