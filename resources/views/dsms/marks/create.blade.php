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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.store') }}" method="post" enctype="multipart/form-data" id="schedule-form">
                    @csrf
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="">Session</label>
                                <select class="dropdown-exam" name="session_id" id="session_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['sessions']))
                                    @foreach($data['sessions'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['session_id'])) @if($data['session_id'] == $row->id) selected @endif @endif >{{ $row->session }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">Exam</label>
                                <select class="dropdown-exam" name="exam_id" id="exam_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['exam']))
                                    @foreach($data['exam'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['exam_id'])) @if($data['exam_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <label class="">School-Class-Section</label>
                                <select class="dropdown-school" name="school_class_sec_id" id="school_class_sec_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['school_class_sec']))
                                    @foreach($data['school_class_sec'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['school_class_sec_id'])) @if($data['school_class_sec_id'] == $row->id) selected @endif @endif >{{ $row->school_title }}-({{ $row->class_title }})-({{ $row->sec_title }})</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="">Students</label>
                                <select class="dropdown-school" name="student_id" id="student_id" required>
                                    <option value="">Select</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row" id="TextBoxContainer">
                        {{-- Here html code will be placed --}}
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-plus"></i> &nbsp; Save</button>
                </form>
            </div>
        </section>
    </div>
</div>


@endsection

@section('js')
<!--select2-->
<script type="text/javascript">
    $(document).ready(function () {
        $(".dropdown-exam").select2();
        $(".dropdown-school").select2();
    });
</script>
<script>

    $(document).on('change', '#school_class_sec_id', function (e) {
        $('#student_id').html("");
        // resetForm();
        var school_class_sec_id = $(this).val();
        var session_id = $('#session_id').val();
        if(session_id.length == 0) {
            alert('First Select Session');
            exit;
        }
        var url = '{{ route('dsms.student.getStudents')}}';
        var div_data = '<option value="">Select</option>';
        $.ajax({
            type: "POST",
            url: url,
            data: {
                session_id: session_id,
                school_class_sec_id: school_class_sec_id
            },
            dataType: "json",
            success: function (data) {
                console.log(data);
                if(data.length == 0){
                    alert("No Students Found !!!");
                }
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.id + ">" + "Symbol No:" + obj.roll_no +" =========== Name:" + obj.first_name +"=========== DOB:" + obj.dob_bs +"</option>";
                });
                $('#student_id').append(div_data);
            },
            error: function(jqXHR) {
                console.log(jqXHR.responseText);
            }
        });
    });

</script>
<script type="text/javascript">

    $(document).on('change', '#school_class_sec_id', function (e) {
        $("#TextBoxContainer").html("");
        var school_class_sec_id = $('#school_class_sec_id').val();
        var formURL = '{{ route('dsms.subject.getSubject')}}';
        $.ajax({
            url: formURL,
            type: "POST",
            data: { school_class_sec_id : school_class_sec_id},
            dataType: 'json',
            success: function (data, textStatus, jqXHR)
            {
                console.log(data);
                var response = data;
                if(response.length == 0){
                    alert("No Subjects Found !!");
                }
                else if (response && response.length > 0) {
                    for (i = 0; i < response.length; ++i) {
                        var subject_id = response[i].subject_id;
                        var subject_title = response[i].sub_title;
                        var subject_th_marks = response[i].theory_full_marks;
                        var subject_pr_marks = response[i].practical_full_marks;
                        console.log(response[i].subject_id);
                        var row_id = response[i].id;
                        console.log(response[i].id);
                        appendRow(subject_id, subject_title, subject_th_marks, subject_pr_marks, row_id, i);
                    }
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(jqXHR.responseText);
            }
        });
        e.preventDefault();
    });

    function appendRow(subject_id,subject_title, subject_th_marks, subject_pr_marks, row_id, i) {
        var row = "";
        row += '<div class="col-lg-12">';
            row += '<fieldset class="scheduler-border">';
                row += '<legend class="scheduler-border">'+ (i+1) + '. ' + subject_title +':</legend>';
                row += '<input type="hidden" name="data['+ i +'][school_class_section_subject_id]" class="form-control" id="data['+ i +'][school_class_section_subject_id]" value="'+ row_id + '">';

                    row += '<div class="form-group">';
                        row += '<div class="row">';
                            if(subject_th_marks){
                            row += '<div class="col-md-2">';
                                row += '<div class="checkbox">';
                                    row += '<label><input type="checkbox" name="data['+ i +'][th_attendance]" id="data['+ i +'][th_attendance]" value="ABS">Theory Abs</label>';
                                row += '</div>';
                            row += '</div>';
                            row += '<div class="col-md-4">';
                                row += '<label for="">Theory Full Marks: '+ subject_th_marks +'</label>';
                                row += '<input type="text" name="data['+ i +'][theory_marks]" class="form-control" id="data['+ i +'][th_attendance]" placeholder="Enter Theory Marks">';
                            row += '</div>';
                            }
                            if(subject_pr_marks){
                            row += '<div class="col-md-2">';
                                row += '<div class="checkbox">';
                                row += '<label><input type="checkbox" name="data['+ i +'][pr_attendance]" value="ABS">Practical Abs</label>';
                                row += '</div>';
                            row += '</div>';
                            row += '<div class="col-md-4">';
                                row += '<label for="">Practical  Full Marks:'+ subject_pr_marks +'</label>';
                                row += '<input type="text" name="data['+ i +'][practical_marks]" class="form-control" id="data['+ i +'][th_attendance]" placeholder="Enter Theory Marks">';
                            row += '</div>';
                            }
                        row += '</div>';
                    row += '</div>';
            row += '</fieldset>';
        row += '</div>';

        $("#TextBoxContainer").append(row);
    }
</script>
@endsection
