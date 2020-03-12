@extends('dsms.layouts.app')

@section('content')
<div class="row">
    <div class="col-md-12">
        <section class="panel">
            <header class="panel-heading">
                Select Criteria
                <div class="pull-right">
                    @if(Route::has($_base_route.'.create'))
                    {{-- <a class="btn btn-success btn-xs" href="{{ route($_base_route.'.create') }}">Add</a> --}}
                    @endif
                </div>
            </header>
            <div class="panel-body">
                <form class="assign_teacher_form" action="{{ route($_base_route.'.update') }}" method="post" enctype="multipart/form-data" id="schedule-form">
                    @csrf {{method_field('PUT')}}
                    <input type="hidden" name="session_id" class="form-control" id="" value="{{ $data['session_id'] }}" readonly>
                    <input type="hidden" name="exam_id" class="form-control" id="" value="{{ $data['exam_id'] }}" readonly>
                    <input type="hidden" name="school_class_sec_id" class="form-control" id="" value="{{ $data['school_class_sec_id'] }}" readonly>
                    <input type="hidden" name="student_id" class="form-control" id="" value="{{ $data['student_id'] }}" readonly>

                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="">Session</label>
                                <input type="text" name="" class="form-control" id="" value="{{ dm_getSession($data['session_id'])->session }}" readonly>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">Exam</label>
                                <input type="text" name="" class="form-control" id="" value="{{  dm_getExam($data['exam_id'])->title }}" readonly>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <label class="">School-Class-Section</label>
                                <input type="text" name="" class="form-control" id="" value="@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif-(@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif)-(@if(isset( $data['section_id'])) {{ dm_getSection($data['section_id'])->title }} @endif)" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="">Students</label>
                                <input type="text" name="" class="form-control" id="" value="Symbol No:{{ dm_getStudent($data['student_id'])->roll_no }}=========== Name:{{ dm_getStudent($data['student_id'])->first_name }}=========== DOB:{{ dm_getStudent($data['student_id'])->dob_bs }}" readonly>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row" id="TextBoxContainer">
                        {{-- Here html code will be placed --}}
                        @if(isset($data['result']))
                        @foreach($data['result'] as $row)

                        {{-- @php dd( dm_getSubject($row->school_class_section_subject_id)); @endphp --}}
                        <div class="col-lg-12">
                            <fieldset class="scheduler-border">
                                <legend class="scheduler-border">{{ $loop->iteration }}. {{ dm_getSubject($row->school_class_section_subject_id)->title }}:</legend>
                                <input type="hidden" name="data[{{ $loop->iteration }}][school_class_section_subject_id]" class="form-control" id="data[{{ $loop->iteration }}][school_class_section_subject_id]" value="{{ $row->school_class_section_subject_id }}">
                                <div class="form-group">
                                    <div class="row">
                                        @if(isset(dm_getSubject($row->school_class_section_subject_id)->theory_full_marks))
                                        <div class="col-md-2">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $loop->iteration }}][th_attendance]" id="data[{{ $loop->iteration }}][th_attendance]" value="ABS" @if($row->theory_attendance == "ABS") checked @endif>Theory Abs</label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="">Theory Full Marks: {{ dm_getSubject($row->school_class_section_subject_id)->theory_full_marks }}</label>
                                            <input type="text" name="data[{{ $loop->iteration }}][theory_marks]" class="form-control" id="data[{{ $loop->iteration }}][theory_marks]" placeholder="Enter Theory Marks" value="{{ $row->theory_get_marks }}">
                                        </div>
                                        @endif
                                        @if(isset(dm_getSubject($row->school_class_section_subject_id)->practical_full_marks))
                                        <div class="col-md-2">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $loop->iteration }}][pr_attendance]" id="data[{{ $loop->iteration }}][pr_attendance]" value="ABS" @if($row->practical_attendance == "ABS") checked @endif>Practical Abs</label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="">Practical Full Marks: {{ dm_getSubject($row->school_class_section_subject_id)->practical_full_marks }}</label>
                                            <input type="text" name="data[{{ $loop->iteration }}][practical_marks]" class="form-control" id="data[{{ $loop->iteration }}][practical_marks]" placeholder="Enter Theory Marks" value="{{ $row->practical_get_marks }}">
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        @endforeach
                        @endif
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-plus"></i> &nbsp; Update</button>
                </form>
            </div>
        </section>
    </div>
</div>


@endsection

@section('js')

@endsection
