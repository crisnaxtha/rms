@extends('dsms.layouts.app')
@section('css')
@include('dsms.includes.datatable-assets.css')

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
                    <a class="btn btn-success btn-xs" href="{{ route($_base_route.'.create') }}">Add</a>
                    @endif
                </div>
            </header>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="row">
                            <form class="assign_teacher_form" action="{{ route($_base_route.'.index')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="col-md-4">
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
                                <div class="col-md-4">
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
                                <div class="col-md-4">
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
                                <div class="col-m-12">
                                    <button class="btn btn-success btn-xs pull-right" id="search_filter" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="row">
                            <form class="assign_teacher_form" action="{{ route($_base_route.'.index')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" @if(isset($data['school_id'])) value="{{ $data['school_id'] }}" @endif id="post_school_id" name="school_id">
                                <input type="hidden" @if(isset($data['class_id'])) value="{{ $data['class_id'] }}" @endif id="post_class_id" name="class_id">
                                <input type="hidden" @if(isset($data['section_id'])) value="{{ $data['section_id'] }}" @endif id="post_section_id" name="section_id">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Search By Keyword</label>
                                        <input type="text" name="search_text" class="form-control" value="@if(isset($data['query'])) {{ $data['query'] }} @endif"   placeholder="Search By Student Name, Roll Number, Enroll Number, National Id, Local Id Etc.">
                                    </div>
                                </div>
                                <div class="col-m-12">
                                    <button class="btn btn-success btn-xs pull-right" id="search_all" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!--select2 end-->
 <!--Assign Subject block-->
 <div class="row">
    <div class="col-sm-12">
        @if(isset($data['rows']))
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }}
          </header>
          <div class="panel-body">
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                            <th>#</th>
                            <th>Admission No</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>DoB</th>
                            <th>Mobile No.</th>
                            <th>Gender</th>
                            <th>Action</th>
                      </tr>
                   </thead>
                   <tbody>
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $row->admission_no }}</td>
                            <td>{{ $row->first_name }}</td>
                            <td>@php $cs = dm_schoolClassSection($row->school_class_section_id) @endphp {{ $cs->class_title  }}({{ $cs->sec_title }})</td>
                            {{-- <td>{{ $row->father_name }}</td> --}}
                            <td>{{ $row->dob }}</td>
                            <td>{{ $row->mobile_no }}</td>
                            <td>{{ $row->gender }}</td>
                            <td>
                                @include('dsms.includes.buttons.button-show')
                                @include('dsms.includes.buttons.button-edit')
                                @include('dsms.includes.buttons.button-delete')
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
@endsection

@section('js')
@include('dsms.includes.datatable-assets.js')

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

    $(document).on('change', '#section_id', function (e) {
        var school_id = $('#school_id').val();
        var class_id = $('#class_id').val();
        var section_id = $('#section_id').val();
        $('#post_school_id').val(school_id);
        $('#post_class_id').val(class_id);
        $('#post_section_id').val(section_id);
    });
</script>
@endsection
