@if(Route::has('dsms.marks.print_marksheet'))
<a class="btn btn-danger btn-xs" target="_blank" href="{{ route('dsms.marks.print_marksheet', ['exam_id'=>$data['exam_id'], 'school_id' => $data['school_id'], 'class_id' => $data['class_id'], 'section_id' => $data['section_id'], 'student_id'=> $key]) }}">
    <i class="fa fa-print"></i>
</a>
@endif
