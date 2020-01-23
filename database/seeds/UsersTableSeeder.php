<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Super Admin',
            'email' => "lochan2075@gmail.com",
            'password'=>bcrypt('secret!@#$%'),
            'role_super' => 1,
        ]);
    }
}
