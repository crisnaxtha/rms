@extends('dsms.layouts.app')
@section('css')
<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/assets/bootstrap-datetimepicker/css/datetimepicker.css')}}" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/assets/bootstrap-timepicker/compiled/timepicker.css')}}" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/assets/bootstrap-datetimepicker/css/datetimepicker.css')}}" />
@endsection
@section('content')
 <!--select2 start-->
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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.getSubject')}}" method="post" enctype="multipart/form-data">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Exam</label>
                            <select class="dropdown-class" name="exam_id" id="exam_id">
                                <option value="">Select</option>
                                @foreach($data['exam'] as $row)
                                <option value="{{ $row->id }}">{{ $row->title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">School</label>
                            <select class="dropdown-school" name="school_id" id="school_id">
                                <option value="">Select</option>
                                @if(isset($data['school']))
                                @foreach($data['school'] as $row)
                                    <option value="{{ $row->id }}">{{ $row->title }}</option>
                                @endforeach
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Class</label>
                            <select class="dropdown-class" name="class_id" id="class_id">
                                <option value="">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Section</label>
                            <select class="dropdown-section" name="section_id" id="section_id">
                                <option value="">Select</option>
                            </select>
                        </div>
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
                </form>
            </div>
        </section>
    </div>
</div>
<!--select2 end-->
 <!--Assign Subject block-->
<div class="row" id="box_display" style="display:none">
    <div class="col-md-12">
        <section class="panel">
            <header class="panel-heading">
                Exam List
            </header>
            <div class="panel-body">
                <form action="{{ route($_base_route.'.store') }}" method="POST" class="">
                    @csrf
                    <input type="hidden" value="0" id="post_school_id" name="school_id">
                    <input type="hidden" value="0" id="post_class_id" name="class_id">
                    <input type="hidden" value="0" id="post_section_id" name="section_id">
                    <input type="hidden" value="0" id="post_exam_id" name="exam_id">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Date</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Room</th>
                                <th>Full Marks</th>
                                <th>Passing Marks</th>
                            </tr>
                            </thead>
                            <tbody id="TableContainer">
                            </tbody>
                        </table>
                    </div>
                    {{-- <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div> --}}
                    <button class="btn btn-success btn-xs pull-right" id="" type="submit"><i class="fa fa-search"></i> &nbsp; Save</button>
                </form>
            </div>
        </section>
    </div>
</div>
<!--Assign Subject block end-->
@endsection

@section('js')
<script type="text/javascript" src="{{asset('assets/dsms/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/dsms/assets/bootstrap-timepicker/js/bootstrap-timepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/dsms/assets/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<!--select2-->
<script type="text/javascript">
    $(document).ready(function () {
        $(".dropdown-school").select2();
        $(".dropdown-class").select2();
        $(".dropdown-section").select2();
    });
</script>
<script>
    $(document).on('change', '#school_id', function (e) {
        $('#class_id').html("");
        // resetForm();
        var school_id = $(this).val();
        // alert(school_id);
        var url = '{{ route('dsms.assign_section.getClass')}}';
        var div_data = '<option value="">Select</option>';
        $.ajax({
            type: "POST",
            url: url,
            data: {school_id: school_id},
            dataType: "json",
            success: function (data) {
                console.log(data);
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.class_id + ">" + obj.class_title  + "</option>";
                });
                $('#class_id').append(div_data);
            },
            error: function(jqXHR){
                console.log(jqXHR.responseJSON);
            }
        });
    });
</script>
<script>

    $(document).on('change', '#class_id', function (e) {
        $('#section_id').html("");
        // resetForm();
        var class_id = $(this).val();
        var school_id = $('#school_id').val();
        var url = '{{ route('dsms.assign_subject.getSection')}}';
        var div_data = '<option value="">Select</option>';
        $.ajax({
            type: "POST",
            url: url,
            data: {class_id: class_id, school_id: school_id},
            dataType: "json",
            success: function (data) {
                // console.log(data);
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.sec_id + ">" + obj.sec_title  + "</option>";
                });
                $('#section_id').append(div_data);
            },
            error: function(jqXHR) {
                console.log(jqXHR.responseText);
            }
        });
    });

</script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".assign_teacher_form").submit(function (e)
        {
            $("#TableContainer").html("");
            var postData = $(this).serializeArray();
            var school_id = $('#school_id').val();
            var class_id = $('#class_id').val();
            var section_id = $('#section_id').val();
            var exam_id = $('#exam_id').val();
            console.log(postData);
            var formURL = $(this).attr("action");
            $.ajax({
                url: formURL,
                type: "POST",
                data: postData,
                dataType: 'json',
                success: function (data, textStatus, jqXHR)
                {
                    console.log(data);
                        var response = data;
                        if (response && response.length > 0) {
                            for (i = 0; i < response.length; ++i) {
                                var subject_id = response[i].subject_id;
                                console.log(response[i].subject_id);
                                var row_id = response[i].id;
                                console.log(response[i].id);
                                appendRow(subject_id, row_id, i);
                            }
                        $('#post_school_id').val(school_id);
                        $('#post_class_id').val(class_id);
                        $('#post_section_id').val(section_id);
                        $('#post_exam_id').val(exam_id);
                        $('#box_display').show();
                    }
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    console.log(jqXHR.responseText);
                }
            });
            e.preventDefault();
        });
    });

    function appendRow(subject_id, row_id, i) {
        var row = "";
        row += '<tr>';
        row += '<input type="hidden" name="i[]" value="'+ i +'">';

        row += '<td>';
        @foreach($data['subject'] as $row)
        if (subject_id === {{ $row->id }}) {
            row += '{{ $row->title }}({{ substr($row->type, 0, 2) }})';
            row += '<input type="hidden" value="{{ $row->id }}" name="subject['+ i +']"/>';
        }
        @endforeach
        row += '</td>';

        row += '<td>';
        row += '<input class="form-control default-date-picker" type="text" value="" name="date['+ i +']" placeholder="Enter Date"/>';
        row += '</td>';

        row += '<td>';
        row += '<div class="input-group bootstrap-timepicker">';
        row += '<input class="form-control timepicker-default" type="text" value="10:00:00"  name="start_time['+ i +']"/>';
        row += '<span class="input-group-btn">';
        row += '<button class="btn btn-default" type="button"><i class="fa fa-clock-o"></i></button>';
        row += '</span>';
        row += '</div>';
        row += '</td>';

        row += '<td>';
        row += '<div class="input-group bootstrap-timepicker">';
        row += '<input class="form-control timepicker-default" type="text" value="13:00:00"  name="end_time['+ i +']"/>';
        row += '<span class="input-group-btn">';
        row += '<button class="btn btn-default" type="button"><i class="fa fa-clock-o"></i></button>';
        row += '</span>';
        row += '</div>';
        row += '</td>';

        row += '<td>';
        row += '<input class="form-control" type="text" value="" name="room['+ i +']" placeholder="Enter Room"/>';
        row += '</td>';

        row += '<td>';
        row += '<input class="form-control" type="text" value="100" name="full_marks['+ i +']" placeholder="Enter Full Marks"/>';
        row += '</td>';

        row += '<td>';
        row += '<input class="form-control" type="text" value="40" name="pass_marks['+ i +']" placeholder="Enter Passing Marks"/>';
        row += '</td>';

        row += '</tr>';
        $("#TableContainer").append(row);
        $('.default-date-picker').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true
        });
        //timepicker start
        $('.timepicker-default').timepicker({
            autoclose: true,
            minuteStep: 1,
            showSeconds: true,
            showMeridian: false
        });
    }

</script>
@endsection
