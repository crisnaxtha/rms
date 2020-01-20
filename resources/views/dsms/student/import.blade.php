@extends('dsms.layouts.app')
@section('css')
@include('dsms.includes.datatable-assets.css')

@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="panel" style="padding:5px;">
            <div class="panel-heading">
                Select Criteria
                <div class="pull-right">
                    <a href="{{ asset('upload_file/students/import_student_sample_file.csv') }}">
                        <button class="btn btn-primary btn-xs"><i class="fa fa-download"></i> Download Sample Import File</button>
                    </a>
                </div>
            </div>
            <div class="panel-body">
                <br/> 1. Your CSV data should be in the format below. The first line of your CSV file should be the column headers as in the table example. Also make sure that your file is UTF-8 to avoid unnecessary encoding problems.
                <br/> 2. If the column you are trying to import is date make sure that is formatted in format Y-m-d (2018-06-06).
                <br/> 3. Duplicate "Admission Number" (unique) and "Roll Number" (unique in class) rows will not be imported.
                <br/> 4. For student "Gender" use Male, Female value.
                <br/> 5. For student "Blood Group" use O+, A+, B+, AB+, O-, A-, B-, AB- value.
                <hr/>
            </div>
            <div class="panel-body table-responsive">
                <table class="table table-striped table-bordered table-hover" id="sampledata">
                    <thead>
                        <tr>

                            <th><span class=text-red>*</span><span>Admission Number</span></th>

                            <th><span>Roll Number</span></th>

                            <th><span>First Name</span></th>

                            <th><span>Last Name</span></th>

                            <th><span class=text-red>*</span><span>Gender</span></th>

                            <th><span>Date Of Birth</span></th>

                            <th><span>Religion</span></th>

                            <th><span>Mobile Number</span></th>

                            <th><span>Email</span></th>

                            <th><span>Admission Date</span></th>

                            <th><span>Blood Group</span></th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                            <td>Sample Data</td>

                        </tr>
                    </tbody>

                </table>
            </div>
            <hr/>
            <form action="{{ route($_base_route.'.import') }}" id="" name="" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="panel-body">
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
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputFile">Select CSV File</label><small class="req"> *</small>
                                <div>
                                    <input class="filestyle form-control" type='file' name='file' id="file" size='20' />
                                    <span class="text-danger"></span></div>
                            </div>
                        </div>
                        <div class="col-md-6 pt20">
                            <button type="submit" class="btn btn-info btn-xs pull-right">Import Student</button>
                        </div>
                    </div>
                </div>

            </form>

            <div>

            </div>
        </div>
    </div>
</div>
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

@endsection
