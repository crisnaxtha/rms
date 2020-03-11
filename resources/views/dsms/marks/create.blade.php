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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.create')}}" method="post" enctype="multipart/form-data" id="schedule-form">
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
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="">Students</label>
                                <select class="dropdown-exam" name="student_id" id="student_id" required>
                                    <option value="">Select</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    Subjects
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="">Students</label>
                                <select class="dropdown-exam" name="student_id" id="student_id" required>
                                    <option value="">Select</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    {{-- <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button> --}}
                </form>
            </div>
        </section>
    </div>
</div>

        <!--Assign Subject block-->
<div class="row" id="box_display">
    <div class="col-md-12">
        @if(isset($data['school_class_section_subjects']))
        <section class="panel">
            <header class="panel-heading">
                Exam List
            </header>
            <div class="panel-body">
                <form action="{{ route($_base_route.'.store') }}" method="POST" class="">
                    @csrf
                    <input type="hidden" value="0" id="session_id" name="session_id">
                    <input type="hidden" value="0" id="exam_id" name="exam_id">
                    <div class="table-responsive">

                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="" type="submit"><i class="fa fa-search"></i> &nbsp; Save</button>
                </form>
            </div>
        </section>
        @endif
    </div>
</div>
<!--Assign Subject block end-->

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
    $("form#schedule-form").submit();
});
</script>

<script>

    $(document).on('change', '#school_class_sec_id', function (e) {
        $('#student_id').html("");
        // resetForm();
        var school_class_sec_id = $(this).val();
        var url = '{{ route('dsms.student.getStudents')}}';
        var div_data = '<option value="">Select</option>';
        $.ajax({
            type: "POST",
            url: url,
            data: {school_class_sec_id: school_class_sec_id},
            dataType: "json",
            success: function (data) {
                console.log(data);
                if(data.length == 0){
                    alert("There is no Data !!!");
                }
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.id + ">" + obj.first_name  + "</option>";
                });
                $('#student_id').append(div_data);
            },
            error: function(jqXHR) {
                console.log(jqXHR.responseText);
            }
        });
    });

</script>
@endsection
