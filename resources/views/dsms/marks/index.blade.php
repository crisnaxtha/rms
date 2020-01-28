@extends('dsms.layouts.app')

@section('content')
<div class="row">
    <div class="col-md-12">
        <section class="panel">
            <header class="panel-heading">
                Select Criteria
                <div class="pull-right">
                    @if(Route::has($_base_route.'.create'))
                    <a class="btn btn-success btn-xs" href="{{ route($_base_route.'.create') }}">Add</a>
                    @endif
                </div>
            </header>
            <div class="panel-body">
                <form class="assign_teacher_form" action="{{ route($_base_route.'.index')}}" method="post" enctype="multipart/form-data" id="schedule-form">
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
 <div class="row">
    <div class="col-sm-12">
        @if(isset($data['std_result']))
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }}
          </header>
          <div class="panel-body">
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                            <th style="font-size: 11px;">#</th>
                            <th style="font-size: 11px;">Student</th>
                            @if(isset($data['exam_schedule']))
                            @foreach($data['exam_schedule'] as $row)
                            <th style="font-size: 11px;">{{ $row->sub_title }}</th>
                            {{-- <th>( {{ $row->exam_sch_id }})</th> --}}
                            @endforeach
                            @endif
                            <th style="font-size: 11px;">View Grade-Sheet</th>
                      </tr>
                   </thead>
                   <tbody>
                        @foreach($data['std_result'] as $key => $rows)
                        {{-- @php dd($rows) @endphp --}}
                        <tr class="gradeX" id="">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ dm_getStudent($key)->first_name }}</td>
                            @if(isset($rows))
                            @foreach($rows as $row )
                            <td>
                                @if($row['theory_attendance'] == 'ABS')
                                <em style="color:red">{{ "Abs" }}</em>
                                @else
                                {{ $row['theory_get_marks'] }}
                                @endif
                                |
                                @if($row['practical_attendance'] == 'ABS')
                                <em style="color:red">{{ "Abs" }}</em>
                                @else
                                {{ $row['practical_get_marks'] }}
                                @endif
                            </td>
                            {{-- <td>( {{ $row['exam_schedules_id'] }})</td> --}}
                            @endforeach
                            @endif
                            <td>
                                @include('dsms.marks.includes.buttons.show')
                                @include('dsms.marks.includes.buttons.print')
                            </td>
                        </tr>
                        @endforeach
                   </tbody>
                </table>
            </div>
          </div>
       </section>
       @endif
    </div>
</div>
<!--Assign Subject block end-->

<!--print block -->
@include('dsms.marks.includes.marksheet')
<!--print block -->
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
