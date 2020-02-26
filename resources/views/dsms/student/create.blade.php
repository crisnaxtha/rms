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
                   <span class="tools pull-right">
                        @include('dsms.student.includes.buttons.button-import')
                  </span>
                </header>
                <div class="panel-body">
                        @include('dsms.includes.flash_message_error')
                    <div class=" form">
                        <form id="form1" action="{{ route($_base_route.'.store') }}" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="">School</label>
                                        <select class="dropdown-school" name="school_id" id="school_id" required>
                                            <option value="">Select</option>
                                            @if(isset($data['school']))
                                            @foreach($data['school'] as $row)
                                                <option value="{{ $row->id }}">{{ $row->title }}</option>
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
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="">Section</label>
                                        <select class="dropdown-section" name="section_id" id="section_id" required>
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Symbol Number</label><small class="req"> *</small>
                                        <input autofocus="" id="roll_no" name="roll_no" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Student Name</label><small class="req"> *</small>
                                        <input id="firstname" name="firstname" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Date Of Birth(BS)</label><small class="req"> *</small>
                                        <input id="dob_bs" name="dob_bs" placeholder="" type="text" class="form-control nepali-picker" value="२०६०-१-१" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                {{-- <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Date Of Birth</label><small class="req"> *</small>
                                        <input id="dob" name="dob" placeholder="" type="text" class="form-control default-date-picker" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div> --}}
                                {{-- <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Last Name</label>
                                        <input id="lastname" name="lastname" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div> --}}
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Gender</label>
                                        <select class="form-control" name="gender">
                                            <option value="">Select</option>
                                            @foreach(dm_gender() as $row)
                                            <option value="{{ $row }}">{{ $row }}</option>
                                            @endforeach
                                        </select>
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Mobile Number</label>
                                        <input id="mobileno" name="mobileno" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input id="email" name="email" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Blood Group</label>
                                        <select class="form-control" rows="3" placeholder="" name="blood_group">
                                            <option value="">Select</option>
                                            @foreach(dm_bloodGroup() as $row)
                                            <option value="{{ $row }}">{{ $row }}</option>
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
                                        <input id="religion" name="religion" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Admission Number</label>
                                        <input id="admission_no" name="admission_no" placeholder="" type="text" class="form-control" value="" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Admission Date</label>
                                        <input id="admission_date" name="admission_date" placeholder="" type="text" class="form-control default-date-picker" value="{{ date('Y-m-d') }}" readonly="readonly" />
                                        <span class="text-danger"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                {{-- <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Student Photo</label>
                                        <div>
                                            <input class="filestyle form-control" type='file' name='image' id="file" size='20' />
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
<script type="text/javascript" src="{{asset('assets/dsms/assets/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
{{-- <script type="text/javascript" src="{{asset('assets/dsms/nepali-datepicker/jquery-1.12.4.min.js')}}"></script> --}}
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
@endsection
