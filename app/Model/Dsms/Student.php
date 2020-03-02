<?php

namespace App\Model\Dsms;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = ['session_id','school_class_section_id', 'admission_no', 'roll_no', 'first_name', 'last_name', 'dob_bs', 'dob_ad', 'religion', 'mobile_no', 'email', 'admission_date', 'blood_group', 'gender'];
}
