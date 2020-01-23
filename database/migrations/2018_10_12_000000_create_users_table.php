<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('user_id')->nullable();
            // $table->unsignedInteger('school_id')->nullable();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('username')->nullable()->unique();
            $table->string('avatar')->nullable();
            $table->string('phone')->nullable();
            $table->string('type')->nullable();
            $table->boolean('role_super')->nullable();
            $table->unsignedInteger('role_id')->nullable();
            $table->integer('code')->nullable();//school code Auto generated
            $table->integer('student_code')->unique()->nullable();//Auto generated
            $table->string('gender')->default('');
            $table->string('blood_group')->default('');
            $table->string('nationality')->default('');
            $table->string('phone_number')->unique()->default('');
            $table->string('address')->default('');
            $table->text('bio')->nullable();
            $table->integer('section_id')->unsigned()->nullable();
            $table->integer('forgotten_password_time')->nullable();
            $table->boolean('status')->default(1);
            $table->softDeletes();
            $table->timestamps();
            $table->rememberToken();
            $table->foreign('role_id')
                    ->references('id')->on('roles')
                    ->onDelete('cascade');
            // $table->foreign('user_id')
            //         ->references('id')
            //         ->on('users')
            //         ->onDelete('cascade');;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
