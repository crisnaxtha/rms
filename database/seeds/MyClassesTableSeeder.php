<?php

use App\Model\Dsms\MyClass;
use Illuminate\Database\Seeder;

class MyClassesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MyClass::create([
            'title' => 'Class V'
        ]);

        MyClass::create([
            'title' => 'Class VIII'
        ]);
    }
}
