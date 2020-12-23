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
<div class="row" id="ledger-1">
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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.topStudentBasedOnClass')}}" method="post" enctype="multipart/form-data" id="schedule-form">
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
        @if(isset($data['top_report']))
       <section class="panel">
            <header class="panel-heading">
                {{ $_panel }}
               @include($_view_path.'.includes.buttons.print')

            </header>
            <div class="panel-body"  style="overflow-y: scroll;" id="ledger">
                @include('dsms.report.includes.ledger-header')

                <table class="table table-bordered">
                    <!--     <thead> -->
                    <tr>
                        <th rowspan="3">S.N.</th>
                        <th rowspan="3"> Symbol No. </th>
                        <th rowspan="3"> Student Name </th>
                        <th rowspan="3"> School </th>
                        <th rowspan="3" style="width:20px;"> Total Marks Obtained in theory</th>
                        <th rowspan="3" style=""> Percentage</th>
                        <th rowspan="3" style=""> Theory full marks</th>
                        <th rowspan="3" style=""> Result</th>
                        <th rowspan="3" style=""> Remarks</th>
                    </tr>

                    <!--     </thead> -->
                    <tbody>
                        @foreach($data['top_report'] as $row)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ dm_getStudent($row->student_id)->roll_no }}</td>
                            <td>{{ dm_getStudent($row->student_id)->first_name }}</td>
                            <td>{{ dm_getSchool(dm_schoolClassSection($row->school_class_section_id)->school_id)->title }}</td>

                            <td>{{ $row->obtain_total_th_marks }}</td>
                            <td>{{ $row->percentage }}</td>
                            <td>{{ $row->grand_total_th_marks }}</td>
                            <td>{{ $row->results }}</td>
                            @if($loop->iteration == 1)
                            <td> First</td>
                            @elseif( $loop->iteration == 2)
                            <td> Second</td>
                            @elseif( $loop->iteration == 3)
                            <td> Third</td>
                            @elseif( $loop->iteration == 4)
                            <td> Fourth</td>
                            @elseif( $loop->iteration == 5)
                            <td> Fifth</td>
                            @else
                            <td></td>
                            @endif
                        </tr>
                        @endforeach
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
<script>
$('#print-window').click(function() {
    var mywindow = window.open('', 'PRINT', 'height=1000,width=900');
    mywindow.document.write('<html><head><title>' + document.title  + '</title>');
    mywindow.document.write('</head><body >');
    mywindow.document.write('<h1>' + document.title  + '</h1>');
    mywindow.document.write(document.getElementById('ledger').innerHTML);
    mywindow.document.write('</body></html>');
    mywindow.document.close(); // necessary for IE >= 10
    mywindow.focus(); // necessary for IE >= 10*/
    mywindow.print();
    mywindow.close();

    return true;

  });
</script>
@endsection