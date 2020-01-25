<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('permissions')->insert([
            [
                'name' => 'School List',
                'slug' => Str::slug('School List'),
                'order' => 1,
            ],
            [
                'name' => 'School Create',
                'slug' => Str::slug('School Create'),
                'order' => 2,
            ],
            [
                'name' => 'School Edit',
                'slug' => Str::slug('School Edit'),
                'order' => 3,
            ],
            [
                'name' => 'School Delete',
                'slug' => Str::slug('School Delete'),
                'order' => 5,
            ],
            [
                'name' => 'Class List',
                'slug' => Str::slug('Class List'),
                'order' => 1,
            ],
            [
                'name' => 'Class Create',
                'slug' => Str::slug('Class Create'),
                'order' => 2,
            ],
            [
                'name' => 'Class  Edit',
                'slug' => Str::slug('Class  Edit'),
                'order' => 3,
            ],
            [
                'name' => 'Class  Delete',
                'slug' => Str::slug('Class  Delete'),
                'order' => 5,
            ],
            [
                'name' => 'Section List',
                'slug' => Str::slug('Section List'),
                'order' => 1,
            ],
            [
                'name' => 'Section Create',
                'slug' => Str::slug('Section Create'),
                'order' => 2,
            ],
            [
                'name' => 'Section Edit',
                'slug' => Str::slug('Section Edit'),
                'order' => 3,
            ],
            [
                'name' => 'Section Delete',
                'slug' => Str::slug('Section Delete'),
                'order' => 5,
            ],
            [
                'name' => 'Assign Class List',
                'slug' => Str::slug('Assign Class List'),
                'order' => 1,
            ],
            [
                'name' => 'Assign Class Create',
                'slug' => Str::slug('Assign Class Create'),
                'order' => 2,
            ],
            [
                'name' => 'Assign Class Delete',
                'slug' => Str::slug('Assign Class Delete'),
                'order' => 5,
            ],

            [
                'name' => 'GradeSheet Setting',
                'slug' => Str::slug('Header Setting'),
                'order' => 1,
            ],
            [
                'name' => 'Assign Section List',
                'slug' => Str::slug('Assign Section List'),
                'order' => 1,
            ],
            [
                'name' => 'Assign Section Create',
                'slug' => Str::slug('Assign Section Create'),
                'order' => 2,
            ],
            [
                'name' => 'Assign Section Delete',
                'slug' => Str::slug('Assign Section Delete'),
                'order' => 5,
            ],  [
                'name' => 'Database Table List',
                'slug' => Str::slug('Database Table List'),
                'order' => 1,
            ],
            [
                'name' => 'Database Backup Download',
                'slug' => Str::slug('Database Backup Download'),
                'order' => 2,
            ],
            [
                'name' => 'Database Backup In Server',
                'slug' => Str::slug('Database Backup In Server'),
                'order' => 3,
            ],
            [
                'name' => 'Assign Subject List',
                'slug' => Str::slug('Assign Subject List'),
                'order' => 1,
            ],
            [
                'name' => 'Assign Subject Create',
                'slug' => Str::slug('Assign Subject Create'),
                'order' => 2,
            ],
            [
                'name' => 'Assign Subject Delete',
                'slug' => Str::slug('Assign Subject Delete'),
                'order' => 5,
            ],  [
                'name' => 'Exam List',
                'slug' => Str::slug('Exam List'),
                'order' => 1,
            ],
            [
                'name' => 'Exam Create',
                'slug' => Str::slug('Exam Create'),
                'order' => 2,
            ],
            [
                'name' => 'Exam Edit',
                'slug' => Str::slug('Exam Edit'),
                'order' => 3,
            ],
            [
                'name' => 'Exam Delete',
                'slug' => Str::slug('Exam Delete'),
                'order' => 5,
            ],
            [
                'name' => 'Grade List',
                'slug' => Str::slug('Grade List'),
                'order' => 1,
            ],
            [
                'name' => 'Grade Create',
                'slug' => Str::slug('Grade Create'),
                'order' => 2,
            ],
            [
                'name' => 'Grade Edit',
                'slug' => Str::slug('Grade Edit'),
                'order' => 3,
            ],
            [
                'name' => 'Grade Delete',
                'slug' => Str::slug('Grade Delete'),
                'order' => 5,
            ],  [
                'name' => 'Exam Schedule List',
                'slug' => Str::slug('Exam Schedule List'),
                'order' => 1,
            ],
            [
                'name' => 'Exam Schedule Create',
                'slug' => Str::slug('Exam Schedule Create'),
                'order' => 2,
            ],
            [
                'name' => 'Mark Register List',
                'slug' => Str::slug('Mark Register List'),
                'order' => 1,
            ],
            [
                'name' => 'Mark Register Create',
                'slug' => Str::slug('Mark Register Create'),
                'order' => 2,
            ],
            [
                'name' => 'Student List',
                'slug' => Str::slug('Student List'),
                'order' => 1,
            ],
            [
                'name' => 'Student Create',
                'slug' => Str::slug('Student Create'),
                'order' => 2,
            ],
            [
                'name' => 'Student Edit',
                'slug' => Str::slug('Student Edit'),
                'order' => 3,
            ],
            [
                'name' => 'Student Show',
                'slug' => Str::slug('Student Show'),
                'order' => 4,
            ],
            [
                'name' => 'Student Delete',
                'slug' => Str::slug('Student Delete'),
                'order' => 5,
            ]
        ]);
    }
}
