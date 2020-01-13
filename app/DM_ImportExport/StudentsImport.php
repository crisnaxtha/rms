<?php

namespace App\DM_ImportExport;
use App\Model\Dsms\Student;

use Maatwebsite\Excel\Concerns\ToModel;

class StudentsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row, $class_section_id)
    {
        // dd($row);
        return new Student([
            'class_section_id'  => $class_section_id,
            'admission_no'      => $row[0],
            'roll_no'           => $row[1],
            'first_name'        => $row[2],
            'last_name'         => $row[3],
            'dob'               => $row[4],
            'religion'          => $row[5],
            'mobile_no'         => $row[6],
            'email'             => $row[7],
            'admission_date'    => $row[8],
            'blood_group'       => $row[9],
            'gender'            => $row[10],
        ]);
    }
}
