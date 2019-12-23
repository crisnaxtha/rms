<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('school_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->nullable();
            $table->string('name')->nullable();
            $table->string('established')->default('');
            $table->text('image')->nullable();
            $table->text('location')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('session_id')->nullable();
            $table->string('session_month')->nullable();
            $table->string('fee_due_days')->nullable();
            $table->string('theme')->nullable();
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
        Schema::dropIfExists('school_settings');
    }
}
