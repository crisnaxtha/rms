@extends('dsms.layouts.app')
@section('css')
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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.getExam')}}" method="post" enctype="multipart/form-data">
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
                <form action="#" class="">
                    @csrf
                    <input type="hidden" value="0" id="post_class_id" name="class_id">
                    <input type="hidden" value="0" id="post_section_id" name="section_id">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Exam Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody id="TableContainer">
                            </tbody>
                        </table>
                    </div>
                    {{-- <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div> --}}
                    {{-- <button class="btn btn-success btn-xs pull-right" id="" type="button"><i class="fa fa-search"></i> &nbsp; Save</button> --}}
                </form>
            </div>
        </section>
    </div>
</div>
<!--Assign Subject block end-->
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

<script type="text/javascript">
    $(document).ready(function () {
        $(".assign_teacher_form").submit(function (e)
        {
            $("#TableContainer").html("");
            var postData = $(this).serializeArray();
            var class_id = $('#class_id').val();
            var section_id = $('#section_id').val();
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
                            for (const [key, value] of Object.entries(response)) {
                                for (const [key, val] of Object.entries(value)) {
                                    console.log(key, val);
                                    appendTable(key, val);
                                }
                            }
                        $('#post_class_id').val(class_id);
                        $('#post_section_id').val(section_id);
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


    function appendTable(key, value){
        var row = "";
        row += '<tr><th scope="row">1</th>';
        row += '<td>' + key + '</td>';
        row += '<td>';
        row += '<button class="btn btn-success btn-xs" type="button" data-toggle="modal" href="#myModal5">View</button>';
        row += '<div class="modal fade modal-dialog-center" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">';
        row += '<div class="modal-dialog modal-lg">';
        row += '<div class="modal-content-wrap">';
        row += '<div class="modal-content">';
        row += '<div class="modal-header">';
        row += '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
        row += '<h4 class="modal-title">' + key + '</h4>';
        row += '</div>';
        row += '<div class="modal-body">';
        row += '<div class="table-responsive">';
        row += '<table class="table table-bordered">';
        row += '<thead>';
        row += '<tr>';
        // row += '<th>#</th>';
        row += '<th>Subject</th>';
        row += '<th>Date</th>';
        row += '<th>Start Time</th>';
        row += '<th>End Time</th>';
        row += '<th>Room</th>';
        row += '<th>Full Marks</th>';
        row += '<th>Pass Marks</th>';
        row += '</tr>';
        row += '</thead>';
        row += '<tbody>';
        row += '<tr>';
        for (const [key, val] of Object.entries(value)) {
        // row += '<th scope="row">1</th>';
        row += '<td>' + val['sub_title'] +'</td>';
        row += '<td>' + val['date_of_exam'] +'</td>';
        row += '<td>' + val['start_to'] +'</td>';
        row += '<td>' + val['end_from'] +'</td>';
        row += '<td>' + val['room_no'] +'</td>';
        row += '<td>' + val['full_marks'] +'</td>';
        row += '<td>' + val['passing_marks'] +'</td>';
        row += '</tr>';
        }
        row += '</tbody>';
        row += '</table>';
        row += '</div>';
        row += '</div>';
        row += '<div class="modal-footer">';
        row += '<button data-dismiss="modal" class="btn btn-default" type="button">Close</button>';
        // row += '<button class="btn btn-warning" type="button"> Confirm</button>';
        row += '</div>';
        row += '</div>';
        row += '</div>';
        row += '</div>';
        row += '</div>';
        row += '</td>';
        row += '</tr>';
        $("#TableContainer").append(row);
    }

</script>
@endsection
