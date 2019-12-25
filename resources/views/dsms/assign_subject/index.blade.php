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
                            <select class="dropdown-class" id="class_id">
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
                            <select class="dropdown-section" id="section_id">
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
            $("input[class$='_error']").html("");
            var class_id = $('#class_id').val();
            var section_id = $('#section_id').val();
            var postData = $(this).serializeArray();
            var formURL = $(this).attr("action");
            $.ajax({
                        url: formURL,
                        type: "POST",
                        data: postData,
                        dataType: 'json',
                        success: function (data, textStatus, jqXHR)
                        {
                            if (data.st === 1) {
                                $.each(data.msg, function (key, value) {
                                    $('.' + key + "_error").html(value);
                                });
                            } else {
                                var response = data.msg;
                                if (response && response.length > 0) {
                                    for (i = 0; i < response.length; ++i) {
                                        var subject_id = response[i].subject_id;
                                        var teacher_id = response[i].teacher_id;
                                        var row_id = response[i].id;
                                        appendRow(subject_id, teacher_id, row_id);
                                    }
                                } else {
                                    $('#box_display').html(" <div class='box-header with-border'><div class='alert alert-info'>No Subject assigned.</div></div>");

                                    //appendRow(0, 0, 0);
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
                            console.log(jqXHR.responseJSON);
                            console.log(textStatus);
                            console.log(errorThrown);
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
                    console.log(data);
                    $.each(data, function (i, obj)
                    {
                        div_data += "<option value=" + obj.sec_id + ">" + obj.sec_title  + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        });
</script>
@endsection
