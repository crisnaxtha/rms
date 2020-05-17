<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGradeSheetSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('grade_sheet_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title_1')->nullable();
            $table->string('title_2')->nullable();
            $table->string('title_3')->nullable();
            $table->string('title_4')->nullable();
            $table->string('title_5')->nullable();
            $table->string('title_6')->nullable();
            $table->text('logo_1')->nullable();
            $table->text('logo_2')->nullable();
            $table->string('print_date')->nullable();
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
        Schema::dropIfExists('grade_sheet_settings');
    }
}
