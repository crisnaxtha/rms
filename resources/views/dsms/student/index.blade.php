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
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <form class="assign_teacher_form" action="{{ route($_base_route.'.search')}}" method="post" enctype="multipart/form-data">
                                @csrf
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
                                <div class="col-m-12">
                                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <form class="assign_teacher_form" action="{{ route($_base_route.'.search')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Search By Keyword</label>
                                        <input type="text" name="search_text" class="form-control"   placeholder="Search By Student Name, Roll Number, Enroll Number, National Id, Local Id Etc.">
                                    </div>
                                </div>
                                <div class="col-m-12">
                                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
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
            $(".dropdown-class").select2();
            $(".dropdown-section").select2();
        });
    </script>

<script type="text/javascript">

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




</script>
@endsection
