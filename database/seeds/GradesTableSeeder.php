<?php

use Illuminate\Database\Seeder;
use App\Model\Dsms\Grade;

class GradesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Grade::create([
            'title' => 'A+',
            'Point' => 4,
            'mark_from' => 90,
            'mark_upto' => 100,
            'description' => 'Outstanding'
        ]);

        Grade::create([
            'title' => 'A',
            'Point' => 3.6,
            'mark_from' => 80,
            'mark_upto' => 90,
            'description' => 'Excellent'
        ]);

        Grade::create([
            'title' => 'B+',
            'Point' => 3.2,
            'mark_from' => 70,
            'mark_upto' => 80,
            'description' => 'Very good'
        ]);

        Grade::create([
            'title' => 'B',
            'Point' => 2.8,
            'mark_from' => 60,
            'mark_upto' => 70,
            'description' => 'Good'
        ]);

        Grade::create([
            'title' => 'C+',
            'Point' => 2.4,
            'mark_from' => 50,
            'mark_upto' => 60,
            'description' => 'Satisfactory'
        ]);

        Grade::create([
            'title' => 'C',
            'Point' => 2.0,
            'mark_from' => 40,
            'mark_upto' => 50,
            'description' => 'Acceptable'
        ]);

        Grade::create([
            'title' => 'D+',
            'Point' => 1.6,
            'mark_from' => 30,
            'mark_upto' => 40,
            'description' => 'Partially acceptable'
        ]);

        Grade::create([
            'title' => 'D',
            'Point' => 1.2,
            'mark_from' => 20,
            'mark_upto' => 30,
            'description' => 'Insufficient'
        ]);

        Grade::create([
            'title' => 'E',
            'Point' => 0.8,
            'mark_from' => 0,
            'mark_upto' => 20,
            'description' => 'Very insufficient'
        ]);
    }
}
