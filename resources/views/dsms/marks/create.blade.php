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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">School</label>
                                <select class="dropdown-school" name="school_id" id="school_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['school']))
                                    @foreach($data['school'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['school_id'])) @if($data['school_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">Class</label>
                                <select class="dropdown-class" name="class_id" id="class_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['class']))
                                    @foreach($data['class'] as $row)
                                    <option value="{{ $row->id }}" @if(isset($data['class_id'])) @if($data['class_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">Section</label>
                                <select class="dropdown-section" name="section_id" id="section_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['section']))
                                    @foreach($data['section'] as $row)
                                    <option value="{{ $row->id }}" @if(isset($data['section_id'])) @if($data['section_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
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
        @if(isset($data['exam_schedule']))
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
                                <th>#</th>
                                <th>Student</th>
                                @if(isset($data['exam_schedule']))
                                @foreach($data['exam_schedule'] as $row)
                                <th>{{ $row->sub_title }}</th>
                                {{-- <th>( {{ $row->exam_sch_id }})</th> --}}
                                @endforeach
                                @endif
                                </tr>
                            </thead>
                            <tbody id="TableContainer">
                            {{-- If Data is already exist in exam_result table then this code of block is called  --}}
                                @if(count($data['std_result']) != 0)
                                {{-- @php dd($data['std_result']) @endphp --}}
                                @foreach($data['std_result'] as $key => $rows)
                                @php $rows_array_key = array_keys($rows); @endphp
                                <tr class="gradeX" id="">
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $key }}</td>
                                    @php $i = 0; @endphp
                                    @if(isset($data['exam_schedule']))
                                    @foreach($data['exam_schedule'] as $row)
                                    <td>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $key }}][{{ $loop->index}}][th_attendance]" value="ABS">Abs</label>
                                            </div>
                                            <input type="hidden" name="data[{{ $key }}][{{ $loop->index}}][student_id]" value="{{ $rows[$rows_array_key[$i]]['std_id']}}">
                                            <input type="hidden" name="data[{{ $key }}][{{ $loop->index}}][exam_schedule_id]" value="{{ $row->sub_id }}">
                                            <label for="">Th</label>
                                            <input type="text" name="data[{{ $key }}][{{ $loop->index}}][theory_marks]" class="form-control input-sm" id="" value="@if(isset($rows[$rows_array_key[$i]]['theory_get_marks'])) {{ $rows[$rows_array_key[$i]]['theory_get_marks'] }} @else  @endif" placeholder="Enter Theory Marks">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $key }}][{{ $loop->index}}][pr_attendance]" value="ABS">Abs</label>
                                            </div>
                                            <label for="">Pr</label>
                                            <input type="text" name="data[{{ $key }}][{{ $loop->index}}][practical_marks]" class="form-control input-sm" id="" value="@if(isset($rows[$rows_array_key[$i]]['practical_get_marks'])) {{ $rows[$rows_array_key[$i]]['practical_get_marks'] }} @else  @endif" placeholder="Enter Pratical Marks">
                                        </div>
                                    </td>
                                    @php $i++; @endphp
                                    @endforeach
                                    @endif
                                </tr>
                                @endforeach
                                @else
                                @foreach($data['student'] as $key => $rows)
                                <tr class="gradeX" id="">
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $rows->first_name }}</td>
                                    @php $i = 0; @endphp
                                    @if(isset($data['exam_schedule']))
                                    @foreach($data['exam_schedule'] as $row)
                                    <td>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $key }}][{{ $loop->index}}][th_attendance]" value="ABS">Abs</label>
                                            </div>
                                            <input type="hidden" name="data[{{ $key }}][{{ $loop->index}}][student_id]" value="{{ $rows->id }}">
                                            <input type="hidden" name="data[{{ $key }}][{{ $loop->index}}][exam_schedule_id]" value="{{ $row->sub_id }}">
                                            <label for="">Th</label>
                                            <input type="text" name="data[{{ $key }}][{{ $loop->index}}][theory_marks]" class="form-control input-sm" id="" placeholder="Enter Theory Marks">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="data[{{ $key }}][{{ $loop->index}}][pr_attendance]" value="ABS">Abs</label>
                                            </div>
                                            <label for="">Pr</label>
                                            <input type="text" name="data[{{ $key }}][{{ $loop->index}}][practical_marks]" class="form-control input-sm" id="" placeholder="Enter Practical Marks">
                                        </div>
                                    </td>
                                    @php $i++; @endphp
                                    @endforeach
                                    @endif
                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                    {{-- <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div> --}}
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
<script>
$(document).on('change', '#section_id', function (e) {
    $("form#schedule-form").submit();
});
</script>
@endsection
