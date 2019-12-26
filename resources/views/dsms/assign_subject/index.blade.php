@extends('dsms.layouts.app')
@section('css')
@section('content')
 <!--select2 start-->
 <div class="row">
    <div class="col-md-12">
        <section class="panel">
            <header class="panel-heading">
                Select Criteria
            </header>
            <div class="panel-body">
                <form class="assign_teacher_form" action="{{ route('dsms.assign_subject.getSubject')}}" method="post" enctype="multipart/form-data">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="">Class</label>
                            <select class="dropdown-class" name="class_id" id="class_id">
                                <option value="">Select</option>
                                @foreach($data['class'] as $row)
                                <option value="{{ $row->id }}">{{ $row->title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
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
                Assign Subject
            </header>
            <div class="panel-body">
                <form action="#" class="">
                    @csrf
                    <input type="hidden" value="0" id="post_class_id" name="class_id">
                    <input type="hidden" value="0" id="post_section_id" name="section_id">
                    <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="">Subject</label>
                            <select class="dropdown-class">
                                <option value="">Select</option>
                                @foreach($data['class'] as $row)
                                <option value="{{ $row->id }}">{{ $row->title }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="" type="button"><i class="fa fa-search"></i> &nbsp; Save</button>
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
            $(".dropdown-class").select2();
            $(".dropdown-section").select2();
        });
    </script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".assign_teacher_form").submit(function (e)
        {
            $("#TextBoxContainer").html("");
            // $("input[class$='_error']").html("");
            // var class_id = $('#class_id').val();
            // var section_id = $('#section_id').val();
            var postData = $(this).serializeArray();
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
                                        var row_id = response[i].id;
                                        appendRow(subject_id, row_id);
                                    }
                                $('#post_class_id').val(class_id);
                                $('#post_section_id').val(section_id);
                                //  $('#btnAdd').show();
                                $('#box_display').show();
                                // $('.save_button').show();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            console.log(jqXHR.responseText);
                            // console.log(textStatus);
                            // console.log(errorThrown);
                        }
                    });

            e.preventDefault();

        });
    });

    $(document).on('change', '#class_id', function (e) {
            $('#section_id').html("");
            // resetForm();
            var class_id = $(this).val();
            var url = '{{ route('dsms.assign_subject.getSection')}}';
            var div_data = '<option value="">Select</option>';
            $.ajax({
                type: "POST",
                url: url,
                data: {class_id: class_id},
                dataType: "json",
                success: function (data) {
                    // console.log(data);
                    $.each(data, function (i, obj)
                    {
                        div_data += "<option value=" + obj.sec_id + ">" + obj.sec_title  + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        });



        function appendRow(subject_id, teacher_id, row_id) {
        var value = $('#TextBoxContainer .app').length;
        var row = "";
        row += '<div class="form-group app">';
        row += '<input type="hidden" name="i[]" value="' + value + '"/>';
        row += '<input type="hidden" name="row_id_' + value + '" value="' + row_id + '"/>';
        row += '<div class="col-md-12">';
        row += '<div class="form-group row">';
        row += '<label for="inputValue" class="col-md-1 control-label">Subject</label>';
        row += '<div class="col-md-4">';
        row += '<select  disabled id="subject_id_' + value + '" name="subject_id_' + value + '" class="form-control" >';
        row += '<option value="">Select</option>';
            var selected = "";
            if (subject_id === '1') {
                selected = "selected";
            }
            row += '<option value="1" ' + selected + '>English (Theory)</option>';

                var selected = "";
            if (subject_id === '2') {
                selected = "selected";
            }
            row += '<option value="2" ' + selected + '>Hindi (Theory)</option>';

                var selected = "";
            if (subject_id === '3') {
                selected = "selected";
            }
            row += '<option value="3" ' + selected + '>Mathematics (Theory)</option>';

                var selected = "";
            if (subject_id === '4') {
                selected = "selected";
            }
            row += '<option value="4" ' + selected + '>Science (Theory)</option>';

                var selected = "";
            if (subject_id === '5') {
                selected = "selected";
            }
            row += '<option value="5" ' + selected + '>Social Studies (Theory)</option>';

                var selected = "";
            if (subject_id === '6') {
                selected = "selected";
            }
            row += '<option value="6" ' + selected + '>French (Theory)</option>';

                var selected = "";
            if (subject_id === '7') {
                selected = "selected";
            }
            row += '<option value="7" ' + selected + '>Drawing (Practical)</option>';

            row += '</select>';
        row += '</div>';

        row += '</div>';
        row += '</div>';
        row += '</div>';
        $("#TextBoxContainer").append(row);
    }
</script>
@endsection
