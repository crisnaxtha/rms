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
                <form action="#" class="">
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
                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="button"><i class="fa fa-search"></i> &nbsp; Search</button>
                </form>
            </div>
        </section>
    </div>
</div>
<!--select2 end-->
 <!--select2 start-->
{{-- <div class="row" id="subject-div" style="visibility:hidden">
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
</div> --}}
<!--select2 end-->
@endsection

@section('js')
    <!--select2-->
    <script type="text/javascript">
        $(document).ready(function () {
            $(".dropdown-class").select2();
            $(".dropdown-section").select2();
        });
    </script>

    <script>
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

    <script>
    function getSubject(obj) {
        var section_id = obj.vale;
        var url = '';
        if(section_id != '') {
            $.ajax({
                type: 'POST',
                url: url,
                dataType: 'html',
                data: {
                    section_id: section_id,
                },
                success: function(response) {

                },
                error: function(xhr) {
                    console.log(xhr.responseTest);
                }
            });
        }
    }

    </script>

<script>
    $('#subject_search').click(function() {
        $('#subject-div').css('visibility', 'visible');
    })
</script>



@endsection
