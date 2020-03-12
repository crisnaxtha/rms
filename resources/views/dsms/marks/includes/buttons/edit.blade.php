@if(Route::has('dsms.marks.edit'))
<a class="btn btn-primary btn-xs" target="_self" href="{{ route('dsms.marks.edit', ['session_id'=> $data['session_id'], 'exam_id'=>$data['exam_id'], 'school_class_section_id' => $data['school_class_sec_id'], 'student_id'=> $key]) }}">
    <i class="fa fa-pencil"></i>
</a>
@endif
