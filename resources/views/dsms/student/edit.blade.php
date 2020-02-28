@extends('dsms.layouts.app')

@section('css')

<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/assets/bootstrap-datetimepicker/css/datetimepicker.css')}}" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/nepali-datepicker/nepaliDatePicker.min.css')}}" />

@endsection


@section('content')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                   {{ $_panel }}
                </header>
                <div class="panel-body">
                    @include('dsms.includes.flash_message_error')
                    <div class=" form">
                        <form id="form1" action="{{ route($_base_route.'.update', ['id'=> $data['row']->id]) }}" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
                            @csrf {{  method_field('PUT')}}
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="">Session</label>
                                        <select class="dropdown-school" name="session_id" id="session_id" required>
                                            <option value="">Select</option>
                                            @if(isset($data['sessions']))
                                            @foreach($data['sessions'] as $row)
                                                <option value="{{ $row->id }}" @if(isset($data['row'])) @if($data['row']->session_id == $row->id) selected @endif @endif >{{ $row->session }}</option>
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
                                                <option value="{{ $row->id }}" @if(isset($data['school_class_section'])) @if($data['school_class_section']->school_id == $row->id) selected @endif @endif >{{ $row->title }}</option>
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
                                            <option value="{{ $row->id }}" @if(isset($data['school_class_section'])) @if($data['school_class_section']->class_id == $row->id) selected @endif @endif >{{ $row->title }}</option>
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
                                            <option value="{{ $row->id }}" @if(isset($data['school_class_section'])) @if($data['school_class_section']->section_id == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                            @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Symbol Number</label>
                                        <input autofocus="" id="roll_no" name="roll_no" placeholder="" type="text" class="form-control" value="{{ $data['row']->roll_no }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Student Name</label><small class="req"> *</small>
                                        <input id="firstname" name="firstname" placeholder="" type="text" class="form-control" value="{{ $data['row']->first_name }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Date Of Birth(BS)</label><small class="req"> *</small>
                                        @if(isset($data['row']->dob_bs))
                                            @php $date_bs = get_nepali_data($data['row']->dob_bs);@endphp
                                        @endif
                                        <input id="dob_bs" name="dob_bs" placeholder="" type="text" class="form-control nepali-picker" value="@if(isset($date_bs)){{ $date_bs }}@else @endif" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                {{-- <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Last Name</label>
                                        <input id="lastname" name="lastname" placeholder="" type="text" class="form-control" value="{{ $data['row']->last_name }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div> --}}
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Gender</label><small class="req"> *</small>
                                        <select class="form-control" name="gender">
                                            <option value="">Select</option>
                                            @foreach(dm_gender() as $row)
                                            <option value="{{ $row }}" @if(isset($data['row']->gender)) @if($data['row']->gender == $row) selected @endif @endif>{{ $row }}</option>
                                            @endforeach
                                        </select>
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Mobile Number</label>
                                        <input id="mobileno" name="mobileno" placeholder="" type="text" class="form-control" value="{{ $data['row']->mobile_no }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input id="email" name="email" placeholder="" type="text" class="form-control" value="{{ $data['row']->email }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Blood Group</label>
                                        <select class="form-control" rows="3" placeholder="" name="blood_group">
                                            <option value="">Select</option>
                                            @foreach(dm_bloodGroup() as $row)
                                            <option value="{{ $row }}" @if(isset($data['row']->blood_group)) @if($data['row']->blood_group == $row) selected @endif @endif>{{ $row }}</option>
                                            @endforeach

                                        </select>

                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Religion</label>
                                        <input id="religion" name="religion" placeholder="" type="text" class="form-control" value="{{ $data['row']->religion }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Admission Number</label> <small class="req"> *</small>
                                        <input id="admission_no" name="admission_no" placeholder="" type="text" class="form-control" value="{{ $data['row']->admission_no }}" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Admission Date</label>
                                        <input id="admission_date" name="admission_date" placeholder="" type="text" class="form-control default-date-picker" value="{{ $data['row']->admission_date }}" readonly="readonly" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                {{-- <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Student Photo</label>
                                        <div>
                                            <input class="filestyle form-control" type='file' name='file' id="file" size='20' />
                                        </div>
                                        <span class="text-danger"></span></div>
                                </div> --}}
                            </div>
                        <?php
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <?php


    ?>

@endsection

@section('js')
<script type="text/javascript" src="{{asset('assets/dsms/assets/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/dsms/nepali-datepicker/jquery.nepaliDatePicker.min.js')}}"></script>

<script>
$('.default-date-picker').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true
});
</script>
<script>
    $(".nepali-picker").nepaliDatePicker({
        dateFormat: "%y-%m-%d",
        closeOnDateSelect: true
    });
</script>
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
@endsection
