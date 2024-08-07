@extends('dsms.layouts.app')
@section('css')
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/other_setting_style.css')}}">
<style>

@media print {
    @page {size: landscape}
    body * {
      visibility: hidden;
    }
    #ledger, #ledger * {
      visibility: visible;
    }
    #ledger {
      position: absolute;
      /* left: 0;
      top: 0; */
      padding-left:-1000px;
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
                <form class="assign_teacher_form" action="{{ route($_base_route.'.grade')}}" method="post" enctype="multipart/form-data" id="schedule-form">
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
                                <label class="">School-Class-Section</label>
                                <select class="dropdown-school" name="school_class_sec_id" id="school_class_sec_id" required>
                                    <option value="">Select</option>
                                    @if(isset($data['school_class_sec']))
                                    @foreach($data['school_class_sec'] as $row)
                                        <option value="{{ $row->id }}" @if(isset($data['school_class_sec_id'])) @if($data['school_class_sec_id'] == $row->id) selected @endif @endif >{{ $row->school_title }}-({{ $row->class_title }})-({{ $row->sec_title }})</option>
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
        @if(isset($data['std_result']))
       <section class="panel">
            <header class="panel-heading">
                {{ $_panel }}
               @include($_view_path.'.includes.buttons.print')

            </header>
            <div class="panel-body"  style="overflow-y: scroll;" id="ledger">
                @include('dsms.report.includes.ledger-header')

                <table class="table table-bordered" style=" page-break-inside:auto">
                {{-- <thead> --}}
                    <tr>
                        <th rowspan="3">S.N.</th>
                        <th rowspan="3"> Symbol No. </th>
                        <th rowspan="3"> Student Name </th>
                        {{-- <th rowspan="3"> School Name </th> --}}
                        <th rowspan="3"></th>
                        @if(isset($data['school_class_section_subjects']))
                        @foreach($data['school_class_section_subjects'] as $row)
                        <th colspan="3">{{ $row->sub_title }}</th>
                        @endforeach
                        @endif
                        <th rowspan="3" style="width:20px;"> GPA</th>
                        <th rowspan="3" style=""> Remarks</th>
                    </tr>
                    <tr>
                        @if(isset($data['school_class_section_subjects']))
                        @foreach($data['school_class_section_subjects'] as $row)
                        <th colspan="1">TH</th>
                        <th colspan="1">PR</th>
                        <th colspan="1">Total</th>
                        @endforeach
                        @endif
                    </tr>
                {{-- </thead> --}}
                    <tbody>
                        @foreach($data['std_result'] as $key => $rows)
                            @php
                            $total_grade_credit_hour = 0;
                            $total_credit_hour = 0;
                            $result_status = 'PASS';
                            @endphp
                            <tr>
                                <td rowspan="2">{{ $loop->iteration }}</td>
                                <td rowspan="2">{{ dm_getStudent($key)->roll_no }}</td>
                                <td rowspan="2">{{ dm_getStudent($key)->first_name }}</td>
                                {{-- <td rowspan="2">@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</td> --}}
                                <td> M </td>
                                @if(isset($rows))
                                @foreach($rows as $row )
                                @php
                                $total_grade_credit_hour += $row['grade_credit_hour'];
                                if($row['grade_credit_hour'] == 0 || $row['grade_credit_hour'] == 0){
                                    dd('here is the problem !! 0 divisor encounterd');
                                }
                                $total_credit_hour += ($row['grade_credit_hour'] / $row['grade_point']);
                                if($row['description'] == 'FAIL'){
                                    $result_status = 'FAIL';
                                }
                                @endphp
                                <td>
                                    @if($row['theory_attendance'] == 'ABS')
                                    <em style="color:red">{{ "Abs" }}</em>
                                    @else
                                    {{ $row['theory_get_marks'] }}
                                    @endif
                                </td>
                                <td>
                                    @if($row['practical_attendance'] == 'ABS')
                                    <em style="color:red">{{ "Abs" }}</em>
                                    @else
                                    {{ $row['practical_get_marks'] }}
                                    @endif
                                </td>
                                <td>
                                @if(isset($row['total_marks']))
                                    {{ $row['total_marks'] }}
                                @else
                                {{ ($row['theory_get_marks'] + $row['practical_get_marks']) }}
                                @endif
                                </td>
                                @endforeach
                                @endif
                                <td rowspan="2">{{ round(dm_calGPA($total_grade_credit_hour, $total_credit_hour), 2) }}</td>
                                <td rowspan="2">{{ $result_status }}</td>
                            </tr>
                            <tr>
                                <td>G</td>
                                @if(isset($rows))
                                @foreach($rows as $row )
                                <td>
                                    @if($row['theory_attendance'] == 'ABS')
                                    <em style="color:red">{{ "Abs" }}</em>
                                    @else
                                    {{ $row['theory_grade'] }}
                                    @endif
                                </td>
                                <td>
                                    @if($row['practical_attendance'] == 'ABS')
                                    <em style="color:red">{{ "Abs" }}</em>
                                    @else
                                    {{ $row['practical_grade'] }}
                                    @endif
                                </td>
                                <td>
                                    @if(isset($row['final_grade']))
                                    {{ $row['final_grade'] }}
                                    @else

                                    @endif
                                </td>
                                @endforeach
                                @endif
                            </tr>
                            {{-- for print break purpose  --}}
                            @if($loop->iteration == 9)
                            <tr><td style="height: 150px"></td></tr>
                            @elseif($loop->iteration != 10 && $loop->iteration%10 == 0)
                            <tr><td style="height: 300px"></td></tr>
                            @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
       </section>
       @endif
    </div>
</div>
 <!-- Latest compiled and minified CSS -->

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
$(document).on('change', '#school_class_sec_id', function (e) {
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
