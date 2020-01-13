<?php

namespace App\Model\Dsms;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = ['class_section_id', 'admission_no', 'roll_no', 'first_name', 'last_name', 'dob', 'religion', 'mobile_no', 'email', 'admission_date', 'blood_group', 'gender'];
}
