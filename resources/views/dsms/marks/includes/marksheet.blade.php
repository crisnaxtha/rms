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
                                        <h1 style="color:red">Set Grade Sheet Setting First</h1>
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
                                    <p>The marks secured by <b>{{ dm_getStudent($key)->first_name }}</b> Date of Birth <b>{{ dm_getStudent($key)->dob_bs }}&nbsp;BS({{ dm_getStudent($key)->dob_ad }}&nbsp;AD)</b> Symbol number <b>{{ dm_getStudent($key)->roll_no }}</b> of<b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b> in basic education completion examination given below.
                            </p>
                        </div>

                        <table>
                            <thead>
                                <tr>
                                    <td rowspan="2">S.N.</td>
                                    <td rowspan="2" colspan="3" style="width:500px;"> Subject </td>
                                    <td colspan="2"> Full Marks</td>
                                    <td colspan="2"> Pass Marks </td>
                                    <td colspan="3"> Obtained Marks </td>
                                    <td rowspan="2"> Remarks</td>
                                </tr>
                                <tr>
                                    <td rowspan="1">TH</td>
                                    <td rowspan="1">PR</td>
                                    <td rowspan="1">TH</td>
                                    <td rowspan="1">PR</td>
                                    <td rowspan="1">TH</td>
                                    <td rowspan="1">PR</td>
                                    <td rowspan="1">Total</td>
                                </tr>
                            </thead>
                                <tbody>
                                    {{-- Initialization --}}
                                @php
                                    $total_obtain_marks = 0;
                                    $total_theory_marks = 0;
                                    $total_pratical_marks = 0;
                                    $total_pass_theory_marks = 0;
                                    $total_pass_pratical_marks = 0;
                                    $total_obtain_theory_marks = 0;
                                    $total_obtain_pratical_marks = 0;
                                    $count = count($rows);
                                @endphp

                                @if(isset($rows))
                                @foreach($rows as $row)
                                {{-- grand total  --}}
                                    @php
                                    $total_obtain_marks += $row['total_marks'];
                                    $total_theory_marks +=  dm_getSubject($row['school_class_section_subject_id'])->theory_full_marks ;
                                    $total_pratical_marks +=  dm_getSubject($row['school_class_section_subject_id'])->practical_full_marks ;
                                    $total_pass_theory_marks += dm_getSubject($row['school_class_section_subject_id'])->theory_pass_marks;
                                    $total_pass_pratical_marks += dm_getSubject($row['school_class_section_subject_id'])->practical_pass_marks;
                                    $total_obtain_theory_marks += $row['theory_get_marks'];
                                    $total_obtain_pratical_marks += $row['practical_get_marks'];
                                    @endphp
                                <tr>
                                    <td rowspan="1">{{ $loop->iteration }}</td>
                                    <td rowspan="1" colspan="3">{{ dm_getSubject($row['school_class_section_subject_id'])->title }}</td>
                                    <td>{{ dm_getSubject($row['school_class_section_subject_id'])->theory_full_marks }}</td>
                                    <td>{{ dm_getSubject($row['school_class_section_subject_id'])->practical_full_marks }}</td>
                                    <td>{{ dm_getSubject($row['school_class_section_subject_id'])->theory_pass_marks }}</td>
                                    <td>{{ dm_getSubject($row['school_class_section_subject_id'])->practical_pass_marks }}</td>
                                    <td>{{ $row['theory_get_marks'] }}</td>
                                    <td>{{ $row['practical_get_marks'] }}</td>
                                    <td>{{ $row['total_marks'] }} </td>
                                    <td> </td>
                                </tr>
                                @endforeach
                                @endif
                                </tbody>
                                {{-- Logic  --}}
                                @php
                                $percentage = dm_calPercentage($total_obtain_marks, ($total_theory_marks + $total_pratical_marks));
                                @endphp
                                <tfoot>
                                <tr>
                                    <td colspan="4" class="footer">Grand Total</td>
                                    <td colspan="1" class="footer">{{ $total_theory_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_pratical_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_pass_theory_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_pass_pratical_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_obtain_theory_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_obtain_pratical_marks }} </td>
                                    <td colspan="1" class="footer">{{ $total_obtain_marks }}</td>
                                    <td colspan="1" class="footer"></td>
                                </tr>
                                <tr>
                                    <td colspan="8" class="footer">Percentage</td>
                                    <td colspan="9"><b>{{ round($percentage, 2) }}</b></td>
                                </tr>
                                </tfoot>
                            </table>

                        <br />

                        <br />

                        <div class="row">
                            <div class="pull-left" style="margin-left: 30px;">
                                <div class="box" style="height:80px;width:100px;border: 1px solid black;">
                                    <p style="text-align: center; margin-top: 55px;"> School Seal</p>
                                </div>
                            </div>
                        </div>
                        <br />

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
