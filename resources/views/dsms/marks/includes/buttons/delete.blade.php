@if(Route::has('dsms.marks.destroy'))
<button id="delete" class="btn btn-danger btn-xs" data-url="{{ route('dsms.marks.destroy', ['session_id'=> $data['session_id'], 'exam_id'=>$data['exam_id'], 'school_class_section_id' => $data['school_class_sec_id'], 'student_id'=> $key]) }}"><i class="fa fa-trash-o"></i></button>
@endif
