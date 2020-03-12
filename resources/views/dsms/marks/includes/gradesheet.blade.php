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
                    <h4 class="modal-title">Marksheet Preview</h4>
                </div>
                <div class="modal-body">

                    <page size="A4" style="border-style:double; padding:20px;" >
                        <div class="row report-header">
                            <div class="col-md-12 ">
                                <div class="col-md-2">
                                    <div class="pull-left">
                                        @if(isset($data['ms_setting']->logo_1))
                                        <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="100" height="100">
                                        @else
                                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-8" style="top:-26px;">
                                    <div class="pull-center">
                                        @if(isset($data['ms_setting']))
                                        <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                                        <h6>{{ $data['ms_setting']->title_2 }}</h6>
                                        <h6>{{ $data['ms_setting']->title_3 }}</h6>
                                        <h4><b>{{ $data['ms_setting']->title_4 }}</b></h4>
                                        @else
                                        <h1 style="color:red">Set Grade Setting First</h1>
                                        @endif
                                        <h5>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif</h5>
                                        <h4 style="text-decoration: underline;;"><b>Grade-Sheet</b></h4>
                                    </div>
                                </div>

                                <div class="col-md-2 logo">
                                    <div class="pull-right">
                                        @if(isset($data['ms_setting']->logo_2))
                                        <img src="{{asset($data['ms_setting']->logo_2)}}" alt="logo" width="100" height="100">
                                        @else
                                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="para">
                                    <p>The grade secured by <b>{{ dm_getStudent($key)->first_name }}</b> Date of Birth <b>{{ dm_getStudent($key)->dob_bs }}&nbsp;BS({{ dm_getStudent($key)->dob_ad }}&nbsp;AD)</b> Symbol number <b>{{ dm_getStudent($key)->roll_no }}</b> of<b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b> in basic education completion examination given below.
                            </p>
                        </div>

                        <table>
                            <thead>
                                <tr>
                                    <td rowspan="2">S.N.</td>
                                    <td rowspan="2" colspan="3" style="width:500px;"> Subject </td>
                                    <td rowspan="2" colspan="0.5"> Credit Hour </td>
                                    <td colspan="2"> Obtained Grade </td>
                                    <td rowspan="2"> Final Grade </td>
                                    <td rowspan="2"> Grade Point</td>
                                    <td rowspan="2"> Remarks</td>
                                </tr>
                                <tr>
                                    <td rowspan="1">TH</td>
                                    <td>PR</td>
                                </tr>
                            </thead>
                            <tbody>
                                {{-- Initialization --}}
                                @php
                                    $total_grade_credit_hour = 0;
                                    $count = count($rows);
                                @endphp

                                @if(isset($rows))
                                @foreach($rows as $row)
                                {{-- @php dd($row) @endphp --}}
                                {{-- grand total  --}}
                                    @php
                                    $total_grade_credit_hour += $row['grade_credit_hour'];
                                    @endphp
                                <tr>
                                    <td rowspan="1">{{ $loop->iteration }}</td>
                                    <td rowspan="1" colspan="3">{{ dm_getSubject($row['school_class_section_subject_id'])->title }}</td>
                                    <td> {{ dm_getSubject($row['school_class_section_subject_id'])->credit_hour }}</td>
                                    <td> {{  $row['theory_grade'] }}</td>
                                    <td>{{ $row['practical_grade'] }}</td>
                                    <td>{{ $row['final_grade'] }}</td>
                                    <td>{{ $row['grade_point'] }}</td>
                                    <td> </td>
                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                            {{-- Logic  --}}
                            @php
                                $gpa = $total_grade_credit_hour/($count * 4);
                            @endphp
                            <tfoot>
                                <tr>
                                    <td colspan="8" class="footer">GPA</td>
                                    <td colspan="9"><b>{{ round($gpa, 2) }}</b></td>
                                </tr>
                            </tfoot>
                        </table>

                        </br>

                        <table>
                            <thead>
                                <tr>
                                    <td>Interval in percent</td>
                                    <td> 90 to 100 </td>
                                    <td> 80 t0 below 90 </td>
                                    <td> 70 to below 80 </td>
                                    <td> 60 to below 70 </td>
                                    <td> 50 to below 60</td>
                                    <td> 40 to below 50</td>
                                    <td> 30 to below 40</td>
                                    <td> 20 to below 30</td>
                                    <td> 0 to below 20</td>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>Grade</b></td>
                                    <td> A+ </td>
                                    <td> A</td>
                                    <td> B+ </td>
                                    <td> B </td>
                                    <td> C+</td>
                                    <td>C </td>
                                    <td>D+ </td>
                                    <td>D </td>
                                    <td>E </td>

                                </tr>

                                <tr>
                                    <td><b>Grade Point</b></td>
                                    <td>4 </td>
                                    <td> 3.6</td>
                                    <td> 3.2</td>
                                    <td>2.8</td>
                                    <td>2.4 </td>
                                    <td>2.0 </td>
                                    <td>1.6</td>
                                    <td>1.2</td>
                                    <td>0.8</td>

                                </tr>

                                <tr>
                                    <td><b>Description</b></td>
                                    <td style="font-size: 11px;">Outstanding</td>
                                    <td style="font-size: 11px;"> Excellent</td>
                                    <td style="font-size: 11px;"> Very Good</td>
                                    <td style="font-size: 11px;">Good</td>
                                    <td style="font-size: 11px;">Satisfactory </tdstyle="font-size: 11px;">
                                        <td style="font-size: 11px;">Acceptable </td>
                                        <td style="font-size: 11px;">Partially acceptable</td>
                                        <td style="font-size: 11px;">Insufficient</td>
                                        <td style="font-size: 11px;">Very Insufficient</td>

                                </tr>
                            </tbody>
                        </table>
                        </br>

                        <div class="row">
                            <div class="pull-left" style="margin-left: 30px;">
                                <div class="box" style="height:80px;width:100px;border: 1px solid black;">
                                    <p style="text-align: center; margin-top: 55px;"> School Seal</p>
                                </div>
                            </div>
                        </div>
                        </br>

                        <div class="signature">
                            <div class="col-md-3">
                                <date> Date:{{ $data['ms_setting']->print_date }}</date>
                            </div>
                            <div class="col-md-2">
                                <p>Prepared by</p>
                            </div>
                            <div class="col-md-2">
                                <p>Checked by</p>

                            </div>
                            <div class="col-md-2">
                                <p>Headmaster</p>

                            </div>
                            <div class="col-md-2">
                                <p>Chairperson</p>

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
