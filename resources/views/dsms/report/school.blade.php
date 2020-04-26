@extends('dsms.layouts.app')
@section('css')
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/other_setting_style.css')}}">
<style>
@media print {
    body * {
      visibility: hidden;
    }
    #ledger, #ledger * {
      visibility: visible;
    }
    #ledger {
      position: absolute;
      left: 0;
      top: 0;
    }
    table tbody tr td {
        font-size: 10px;
    }
    table tbody th {
        font-size: 10px;
    }
}
</style>
 {{-- Js Placed here because it is mandatory for pdf converter --}}
 <script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>


@endsection
@section('content')
<div class="row" class="ledger-1">
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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.school')}}" method="post" enctype="multipart/form-data" id="schedule-form">
                    @csrf
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="">Session</label>
                                <select class="dropdown-exam" name="session_id" id="session_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['sessions']))
                                    @foreach($data['sessions'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['session_id'])) @if($data['session_id'] == $row->id) selected @endif @endif >{{ $row->session }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="">Exam</label>
                                <select class="dropdown-exam" name="exam_id" id="exam_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['exam']))
                                    @foreach($data['exam'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['exam_id'])) @if($data['exam_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <label class="">Class</label>
                                <select class="dropdown-school" name="class_id" id="class_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['class']))
                                    @foreach($data['class'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['class_id'])) @if($data['class_id'] == $row->id) selected @endif @endif >{{ $row->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-success btn-xs pull-right" id="subject_search" type="submit"><i class="fa fa-search"></i> &nbsp; Search</button>
                </form>
            </div>
        </section>
    </div>
</div>

 <!--Assign Subject block-->
 <div class="row">
    <div class="col-sm-12">
        @if(isset($data['schools']))
       <section class="panel">
            <header class="panel-heading">
                {{ $_panel }}
               @include($_view_path.'.includes.buttons.print')

            </header>
            <div class="panel-body"  style="overflow-y: scroll;" id="ledger">
                {{-- <div class="col-md-8"> --}}
                    <div class="pull-center">
                        @if(isset($data['ms_setting']))
                        <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                        <h6>{{ $data['ms_setting']->title_2 }}</h6>
                        <h4 style="text-decoration: underline;;"><b>{{ $_panel }}</b></h4>
                        @else
                        <h1 style="color:red">Set Grade Sheet Setting First</h1>
                        @endif
                    </div>
                {{-- </div> --}}

                <table class="table table-bordered">

                    <tr>
                        <th rowspan="2">S.N.</th>
                        <th rowspan="2" colspan="6"> School Name </th>
                        <th style="text-align: center;" colspan="2">Result</th>
                        <th rowspan="2" colspan="1">Total Number of Students </th>
                        {{-- <th>Percentage</th> --}}
                    </tr>

                    <tr>
                        <th rowspan="1">PASS</th>
                        <th style="text-align: center;" rowspan="1">Fail</th>
                    </tr>

                    <tbody>
                        @foreach($data['schools'] as $key => $rows)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td colspan="6">{{ dm_getSchool($key)->title }}</td>
                            <td>{{ $data['count_pass_'.$loop->iteration] }}</td>
                            <td>{{ $data['count_fail_'.$loop->iteration]}}</td>
                            <td>{{  $data['count_student_'.$loop->iteration]}}</td>
                            {{-- <td>2</td> --}}
                        <tr>
                        @endforeach
                        {{-- <tr>
                            <td colspan="7">Total </td>
                            <td colspan="1">85</td>
                            <td>85</td>
                            <td>85</td>
                            <td>85</td>
                        </tr>

                        <tr>
                            <td colspan="7">Total %</td>
                            <td colspan="1">23.88</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr> --}}
                    </tbody>

                </table>
            </div>
       </section>
       @endif
    </div>
</div>
 <!-- Latest compiled and minified CSS -->
 <link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">


<!--Assign Subject block end-->

<!--print block -->
@include('dsms.marks.includes.gradesheet')
<!--print block -->
@endsection

@section('js')
<!--select2-->
<script type="text/javascript">
    $(document).ready(function () {
        $(".dropdown-exam").select2();
        $(".dropdown-school").select2();
        $(".dropdown-class").select2();
        $(".dropdown-section").select2();
    });
</script>
<script>
$(document).on('change', '#class_id', function (e) {
    $("form#schedule-form").submit();
});
</script>
<script>
$(document).on('click', '#all-pdf', function (e) {
    // myText.removeAttribute("hidden");
    var pdf = new jsPDF();
    pdf.html(document.getElementById('all-gradesheet-pdf'), {
        callback: function (pdf) {
            var iframe = document.createElement('iframe');
            // iframe.setAttribute('style', ' height:100%; width:100%');
            document.body.appendChild(iframe);
            iframe.src = pdf.save('datauristring');
        }
    });
});
</script>
@endsection
