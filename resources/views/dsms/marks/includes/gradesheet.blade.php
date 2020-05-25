 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
@if(isset($data['std_result']))
@foreach($data['std_result'] as $key => $rows)
<!-- vertical center large Modal  start -->
<div class="modal fade top-modal-without-space" id="myModal{{ $loop->iteration }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content-wrap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Grade-Sheet Preview</h4>
                </div>
                <div class="modal-body">

                    <page size="A4" style="border-style:double; padding:20px;" >
                        <div class="row report-header">
                            <div class="col-md-2">
                                <div class="pull-left">
                                    @if(isset($data['ms_setting']->logo_1))
                                    <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="100" height="100">
                                    @else
                                    <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-8" style="top:-26px; text-align:center;">
                                <div class="pull-center">
                                    @if(isset($data['ms_setting']))
                                    <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                                    <h4>{{ $data['ms_setting']->title_2 }}</h4>
                                    <br>
                                    <h3 style="text-transform: uppercase;"><b>{{ $data['ms_setting']->title_3 }}</b></h3>
                                    <br>
                                    <h3 style="text-transform: uppercase;"><b>{{ $data['ms_setting']->title_4 }}</b></h3>
                                    @else
                                    <h1 style="color:red">Set Grade Sheet Setting First</h1>
                                    @endif
                                    {{-- <h5>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif</h5> --}}
                                    {{-- <h4 style="text-decoration: underline;;"><b>GRADE-SHEET</b></h4> --}}
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="pull-right">
                                    @if(isset($data['ms_setting']->logo_2))
                                    <img src="{{asset($data['ms_setting']->logo_2)}}" alt="logo" width="100" height="100">
                                    @else
                                    <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                                    @endif
                                </div>
                            </div>
                        </div>

                        <div class="para">
                            <p>GRADE SECURED BY <b>{{ dm_getStudent($key)->first_name }}</b>
                                DATE OF BIRTH <b>{{ dm_getStudent($key)->dob_bs }}&nbsp;
                                BS({{ dm_getStudent($key)->dob_ad }}&nbsp;AD)</b> SYMBOL NUMBER <b>
                                {{ dm_getStudent($key)->roll_no }}</b> OF<b>
                                @if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b>
                                DISTRICT <b> @if(isset($data['ms_setting'])){{ $data['ms_setting']->title_5 }} @endif</b>
                                PROVINCE <b> @if(isset($data['ms_setting'])) {{ $data['ms_setting']->title_6 }} @endif</b>
                                IN THE ANNUAL BASIC EDUCATION EXAMINATION ARE GIVEN BELOW</p>
                            </p>
                        </div>

                        <table>
                            <thead>
                                <tr>
                                    <td rowspan="2">S.N.</td>
                                    <td rowspan="2" colspan="3" style="width:500px;"> SUBJECT </td>
                                    <td rowspan="2" colspan="0.5"> CREDIT HOUR </td>
                                    <td colspan="2"> OBTAINED GRADE</td>
                                    <td rowspan="2"> FINAL GRADE </td>
                                    <td rowspan="2"> GRADE POINT</td>
                                    <td rowspan="2"> REMARK</td>
                                </tr>
                                <tr>
                                    <td rowspan="1">TH</td>
                                    <td rowspan="1">PR</td>
                                </tr>
                            </thead>
                            <tbody>
                                {{-- Initialization --}}
                                @php
                                    $total_grade_credit_hour = 0;
                                    $count = count($rows);
                                    $total_credit_hour = 0;
                                @endphp

                                @if(isset($rows))
                                @foreach($rows as $row)
                                {{-- grand total  --}}
                                    @php
                                    $total_grade_credit_hour += $row['grade_credit_hour'];
                                    // dd(dm_getSubject($row['school_class_section_subject_id']));
                                    $total_credit_hour += dm_getSubject($row['school_class_section_subject_id'])->credit_hour;
                                    @endphp
                                <tr>
                                    <td rowspan="1">{{ $loop->iteration }}</td>
                                    <td rowspan="1" colspan="3">{{ dm_getSubject($row['school_class_section_subject_id'])->title }}</td>
                                    <td style="text-align: center">{{ dm_getSubject($row['school_class_section_subject_id'])->credit_hour }}</td>
                                    <td style="text-align: center">
                                        @if($row['theory_attendance'] === 'Abs')
                                            Ab*
                                        @elseif($row['theory_get_marks'] === Null && dm_getSubject($row['school_class_section_subject_id'])->theory_full_marks != Null)
                                            T*
                                        @else
                                        {{ $row['theory_grade'] }}
                                        @endif
                                    </td>
                                    <td style="text-align: center">
                                        @if($row['practical_attendance'] === 'Abs')
                                        Ab*
                                        @elseif($row['practical_get_marks'] === Null  && dm_getSubject($row['school_class_section_subject_id'])->practical_full_marks != Null)
                                        P*
                                        @else
                                        {{ $row['practical_grade'] }}
                                        @endif
                                    </td>
                                    <td style="text-align: center">
                                        {{ $row['final_grade'] }}
                                    </td>
                                    <td style="text-align: center">
                                        {{ $row['grade_point'] }}
                                    </td>
                                    <td></td>
                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                            {{-- Logic  --}}
                            @php
                                $gpa = dm_calGPA($total_grade_credit_hour, $total_credit_hour);
                            @endphp
                            <tfoot>
                                <tr style="height: 60px;">
                                    <td colspan="8" class="footer" ><b> GRADE POINT AVERAGE (GPA) </b></td>
                                    <td colspan="9"><b>{{ round($gpa, 2) }}</b></td>
                                </tr>
                            </tfoot>
                        </table>

                        <br/>
                        <ol>
                            <li>One Credit Hour Equals 32 Clock Hours</li>
                            <li>TH: Theory, PR: Practical</li>
                            <li>Ab *: Absent,<br> T*: Theroy Grade Missing <br> P*: Practical Grade Missing</li>
                        </ol>

                        <br/>

                        <div class="row">
                            <div class="col-md-12">
                              CHECKED BY:
                            </div>
                        </div>
                        <br/>

                        <div class="row">
                            <div class="col-md-6">
                                DATE OF ISSUE:&nbsp;{{ $data['ms_setting']->print_date }}
                            </div>
                            <div class="col-md-6 pull-right" style="margin-right: 10px; border-top: 1px solid #000">
                                EDUCATION OFFICER
                            </div>
                        </div>

                    </page>

                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- vertical center large Modal end -->

@endforeach
@endif
 <!-- Latest compiled and minified JavaScript -->
