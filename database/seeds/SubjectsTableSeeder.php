<?php

use Illuminate\Database\Seeder;
use App\Model\Dsms\Subject;

class SubjectsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Subject::create([
            'title' =>'Compulsory English',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);

        Subject::create([
            'title' =>'Compulsory Nepali',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);
        Subject::create([
            'title' =>'Compulsory Mathematics',
            'theory_full_marks'=>'100',
            'theory_pass_marks'=>'40',
            // 'practical_full_marks'=>'',
            // 'practical_pass_marks'=>'',
            'credit_hour'=>'4',
        ]);
        Subject::create([
            'title' =>'Compulsory Social Studies and Population Education',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);
        Subject::create([
            'title' =>'Compulsory Science and Environment Education',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);
        Subject::create([
            'title' =>'Compulsory Moral Education',
            'theory_full_marks'=>'50',
            'theory_pass_marks'=>'20',
            'practical_full_marks'=>'20',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'2',
        ]);
        Subject::create([
            'title' =>'Compulsory Health and Physical Education',
            'theory_full_marks'=>'50',
            'theory_pass_marks'=>'20',
            'practical_full_marks'=>'20',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'2',
        ]);
        Subject::create([
            'title' =>'Compulsory Occupation, Business and Technology Education',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);
        Subject::create([
            'title' =>'Optional Computer Education',
            'theory_full_marks'=>'75',
            'theory_pass_marks'=>'35',
            'practical_full_marks'=>'25',
            'practical_pass_marks'=>'10',
            'credit_hour'=>'4',
        ]);

    }
}
