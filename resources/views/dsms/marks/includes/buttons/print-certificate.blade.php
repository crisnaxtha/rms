@if(Route::has('dsms.marks.print_certificate'))
<a class="btn btn-success btn-xs" target="_blank" href="{{ route('dsms.marks.print_certificate', ['session_id'=> $data['session_id'], 'exam_id'=>$data['exam_id'], 'school_class_section_id' => $data['school_class_sec_id'], 'student_id'=> $key]) }}">
   <i class="fa fa-print"></i>&nbsp;&copy;
</a>
@endif
