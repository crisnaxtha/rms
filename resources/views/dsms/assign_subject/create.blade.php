@extends('dsms.layouts.app')
@section('css')
@section('content')
 <!--select2 start-->
 <div class="row">
    <div class="col-md-12">
        <section class="panel">
            <header class="panel-heading">
                Select Criteria
                <div class="pull-right">
                    @if(Route::has('dsms.assign_subject.create'))
                    {{-- <a class="btn btn-success btn-xs" href="{{ route('dsms.assign_subject.create') }}">Add</a> --}}
                    @endif
                </div>
            </header>
            <div class="panel-body">
                <form class="assign_teacher_form" action="{{ route('dsms.assign_subject.getSubject')}}" method="post" enctype="multipart/form-data">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="">School</label>
                            <select class="dropdown-school" name="school_id" id="school_id">
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
                            <select class="dropdown-class" name="class_id" id="class_id">
                                <option value="">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
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
                <button id="btnAdd" class="btn btn-primary btn-xs pull-right" type="button" style="display: block;"><i class="fa fa-plus"></i> Add</button>
            </header>
            <div class="panel-body">
                <form action="{{ route('dsms.assign_subject.store') }}" class="" method="POST">
                    @csrf
                    <input type="hidden" value="" id="post_school_id" name="school_id">
                    <input type="hidden" value="" id="post_class_id" name="class_id">
                    <input type="hidden" value="" id="post_section_id" name="section_id">
                    <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="" type="submit"><i class="fa fa-search"></i> &nbsp; Save</button>
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
<script>
 $(function () {
    $(document).on("click", "#btnAdd", function () {
        var lenght_div = $('#TextBoxContainer .app').length;
        var div = GetDynamicTextBox(lenght_div);
        $("#TextBoxContainer").append(div);
    });
    $("body").on("click", ".remove", function () {
        $(this).closest("div").remove();
    });
});
function GetDynamicTextBox(value) {
        var row = "";
        row += '<div class="form-group app">';
        row += '<input type="hidden" name="i[]" value="' + value + '"/>';
        row += '<input type="hidden" name="row_id[]" value=""/>';
        row += '<div class="col-md-10">';
        row += '<div class="form-group row">';
        row += '<label for="inputValue" class="col-md-1 control-label">Subject</label>';
        row += '<div class="col-md-8">';
        row += '<select id="subject_id_' + value + '" name="subject_id[]" class="form-control" >';
        row += '<option value="">Select</option>';
        @foreach($data['subject'] as $row)
            row += '<option value="{{ $row->id }}">{{ $row->title }}</option>';
        @endforeach
        row += '</select>';
        row += '</div>';

        row += '</div>';
        row += '</div>';
        row += '<div class="col-md-2"><button id="btnRemove" style="" class="btn btn-xs btn-danger" type="button"><i class="fa fa-minus-square"></i></button></div>';
        row += '</div>';
        return row;
    }
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".assign_teacher_form").submit(function (e)
        {
            $("#TextBoxContainer").html("");
            var postData = $(this).serializeArray();
            var school_id = $('#school_id').val();
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
                            for (i = 0; i < response.length; ++i) {
                                var subject_id = response[i].subject_id;
                                var row_id = response[i].id;
                                console.log(response[i].id);
                                console.log(response[i].subject_id);
                                appendRow(subject_id, row_id, i);
                            }
                        }
                        else {
                            appendRow('', '', '');
                        }
                        $('#post_school_id').val(school_id);
                        $('#post_class_id').val(class_id);
                        $('#post_section_id').val(section_id);
                        $('#box_display').show();
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    console.log(jqXHR.responseText);
                }
            });
            e.preventDefault();
        });
    });

    function appendRow(subject_id, row_id, i) {
        var value = $('#TextBoxContainer .app').length;
        var row = "";
        row += '<div class="form-group app">';
        row += '<input type="hidden" name="i[]" value="' + value + '"/>';
        row += '<input type="hidden" name="row_id[]" value="' + row_id + '"/>';
        row += '<div class="col-md-10">';
        row += '<div class="form-group row">';
        row += '<label for="inputValue" class="col-md-1 control-label">Subject</label>';
        row += '<div class="col-md-8">';
        row += '<select id="subject_id_' + i + '" name="subject_id[]" class="form-control" >';
        row += '<option value="">Select</option>';
        @foreach($data['subject'] as $row)
            var selected = "";
            if (subject_id === {{ $row->id }}) {
                selected = "selected";
            }
            row += '<option value="{{ $row->id }}" ' + selected + '>{{ $row->title }}</option>';
        @endforeach
        row += '</select>';
        row += '</div>';
        row += '</div>';
        row += '</div>';
        row += '<div class="col-md-2"><button id="btnDelete" style="" class="btnDelete btn btn-xs btn-danger" type="button" data-id='+ row_id +' ><i class="fa fa-minus-square"></i></button></div>';
        row += '</div>';
        $("#TextBoxContainer").append(row);
    }

    $(document).on('change', '#section_id', function (e) {
        resetForm();
    });

    function resetForm() {
        $('#TextBoxContainer').html("");
        // $('#btnAdd').hide();
        $('.save_button').hide();
    }

    $(document).on('click', '#btnRemove', function () {
        $(this).parents('.form-group').remove();
    });
    $(document).on('click', '#btnDelete', function() {
        var id = $(this).data('id');
        // alert(id);
        $.ajax({
            type: 'DELETE',
            url: '{{ route('dsms.assign_subject.destroy')}}',
            dataType: 'json',
            data: {
                id : id,
            },
            success: function(response){
                console.log(response);
                $(this).parents('.form-group').remove();

            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(jqXHR.responseText);
            }
        })
    });
</script>
@endsection
