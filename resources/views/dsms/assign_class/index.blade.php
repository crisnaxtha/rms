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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.getClass')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="col-md-12">
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
                Assign Section
            </header>
            <div class="panel-body">
                <form action="#" class="">
                    @csrf
                    <input type="hidden" value="0" id="post_school_id" name="school_id">
                    <div class="form-horizontal" id="TextBoxContainer" role="form">
                    </div>
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
    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".assign_teacher_form").submit(function (e)
        {
            $("#TextBoxContainer").html("");
            var postData = $(this).serializeArray();
            var school_id = $('#school_id').val();
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
                                var class_id = response[i].class_id;
                                console.log(response[i].class_id);
                                var row_id = response[i].id;
                                console.log(response[i].id);
                                appendRow(class_id, row_id, i);
                            }
                        $('#post_school_id').val(school_id);
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
</script>
<script>
    function appendRow(class_id, row_id, i) {
        var row = "";
        row += '<div class="form-group app">';
        row += '<div class="col-md-12">';
        row += '<div class="form-group row">';
        row += '<label for="inputValue" class="col-md-1 control-label">Class</label>';
        row += '<div class="col-md-4">';
        row += '<select disabled id="class_id_' + i + '" name="class_id_' + i + '" class="form-control" >';
        row += '<option value="">Select</option>';
        @foreach($data['class'] as $row)
            var selected = "";
            if (class_id === {{ $row->id }}) {
                selected = "selected";
            }
            row += '<option value="{{ $row->id }}" ' + selected + '>{{ $row->title }}</option>';
        @endforeach
        row += '</select>';
        row += '</div>';

        row += '</div>';
        row += '</div>';
        row += '</div>';
        $("#TextBoxContainer").append(row);
    }
</script>
@endsection