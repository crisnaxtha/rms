<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('class_section_id');
            $table->string('admission_no')->nullable();
            $table->string('roll_no')->nullable();
            $table->date('admission_date')->nullable();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->text('image')->nullable();
            $table->string('mobile_no')->nullable();
            $table->string('email')->nullable();
            $table->string('province')->nullable();
            $table->string('city')->nullable();
            $table->string('religion')->nullable();
            $table->date('dob')->nullable();
            $table->string('gender')->nullable();
            $table->text('current_address')->nullable();
            $table->text('permanent_address')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('father_name')->nullable();
            $table->string('father_phone')->nullable();
            $table->string('father_occupation')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('mother_phone')->nullable();
            $table->string('mother_occupation')->nullable();
            $table->string('guardian_name')->nullable();
            $table->string('guardian_relation')->nullable();
            $table->string('guardian_occupation')->nullable();
            $table->text('guardian_address')->nullable();
            $table->string('guardian_email')->nullable();
            $table->string('guardian_phone')->nullable();
            $table->text('father_pic')->nullable();
            $table->text('mother_pic')->nullable();
            $table->text('guardian_pic')->nullable();
            $table->text('previous_school')->nullable();
            $table->text('height')->nullable();
            $table->text('weight')->nullable();
            $table->date('measurement_date')->nullable();
            $table->boolean('status')->default(1);
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
        Schema::dropIfExists('students');
    }
}
