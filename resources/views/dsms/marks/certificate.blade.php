<!DOCTYPE html>
<html lang="en">
   <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Certificate</title>
        <!-- Latest compiled and minified CSS -->
        <link href="{{ asset('assets/dsms/css/bootstrap.min.css') }}" rel="stylesheet">
        <!-- Optional theme -->
        <link href="{{ asset('assets/dsms/assets/font-awesome/css/font-awesome.css') }}" rel="stylesheet" />
        <link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/certificate_style.css')}}">
   </head>
   <body>
      <center>
         <span class="demo"><button onclick="window.print();return false;"><i class="fa fa-print"></i>&nbsp;&nbsp;Print</button></span>
      </center>
      <page size="A4">
         <div class="grade-sheet-wrapper">
            <div class="row report-header">
               <div class="col-md-2">
                @if(isset($data['ms_setting']->logo_1))
                <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="100" height="100">
                @else
                <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                @endif
               </div>
               <div class="col-md-8" style="top:-26px; text-align:center;">
                    @if(isset($data['ms_setting']))
                    <div>
                        <h3><b>{{ $data['ms_setting']->title_nepali_1 }}</b></h3>
                        <h4>{{ $data['ms_setting']->title_nepali_2 }}</h4>
                        <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                        <h4 style="">{{ $data['ms_setting']->title_2 }}</h4>
                    </div>
                    <div style="margin-top: 50px;">
                            <h2><b>{{ $data['ms_setting']->title_nepali_3 }}</b></h2>
                            <h2 style="text-transform: uppercase;"><b>{{ $data['ms_setting']->title_3 }}</b></h2>
                    </div>
                    @else
                    <h1 style="color:red">Set Grade Sheet Setting First</h1>
                    @endif
                    <div style="margin-top: 50px;">
                            <h2><b>प्रमाणपत्र</b></h2>
                            <h2 style="text-transform: uppercase;"><b>Certificate</b></h2>
                    </div>
               </div>
               <div class="col-md-2 pull-right">
                    @if(isset($data['ms_setting']->logo_2))
                    <img src="{{asset($data['ms_setting']->logo_2)}}" alt="logo" width="100" height="100">
                    @else
                    <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                    @endif
               </div>
            </div>
            <div class="row">
                <div style="float:right; border: 2px solid #000; height: 100px; width: 100px;margin: -80px 70px 50px 0"></div>
            </div>
            <br/>
            {{-- Logic for GPA  --}}
            @php
            $total_grade_credit_hour = 0;
            $total_credit_hour = 0;
            @endphp
            @if(isset($data['result']))
            @foreach($data['result'] as $row)
                @php
                $total_grade_credit_hour += $row->grade_credit_hour;
                $total_credit_hour += dm_getSubject($row->school_class_section_subject_id)->credit_hour;
                @endphp
            @endforeach
            @endif
            @php
                $gpa = dm_calGPA($total_grade_credit_hour, $total_credit_hour);
            @endphp
            <div class="para" style="text-align:justify">
                <p>श्री &nbsp;<b>{{ dm_getStudent($data['student_id'])->name_nepali }}</b> ले
                <b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title_nepali }} @endif</b>
                 बाट विक्रम सम्बत <b>{{ get_nepali_data(dm_getSession($data['session_id'])->session) }}</b> को परिक्षा समितिद्धारा
                सञ्चालित आधारभुत तह (<b>कक्षा @if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif </b>)
                 को परिक्षामा सहभागी भई <b>{{  get_nepali_data(round($gpa, 2)) }}</b>
                ‌औसत स्तरीकृत अंक प्राप्‍त गरेको प्रमाणित गरिन्छ ।</p>
                <br/>
                <p>This is to certify that Mr./Ms.&nbsp;<b>{{ dm_getStudent($data['student_id'])->first_name }}</b> of
                    <b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b> has
                completed Basic Level Examination (<b>Grade @if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif )</b>
                conducted by Examination
                Committee in the year <b>{{ dm_getSession($data['session_id'])->session_ad }}</b>. A.D. with
                    <b> {{ round($gpa, 2) }}</b> Grade Point
                Average (GPA).</p>
            </div>
            <br>
            <br>
            <br>
            <div class="row" style="margin-top: 150px">
               <div class="col-md-6">
               </div>
               <div class="col-md-6 pull-right" style="margin-right: 10px; border-top: 1px solid #000">
                  EDUCATION OFFICER
               </div>
            </div>
            <div class="row" style="margin-top: 50px">
                <div class="col-md-6">
                   DATE:&nbsp;{{ $data['ms_setting']->print_date }}
                </div>
                <div class="col-md-6 pull-right">

                </div>
             </div>
         </div>
      </page>
        <!-- Latest compiled and minified JavaScript -->
        <script src="{{ asset('assets/dsms/js/jquery.js') }}"></script>
        <script src="{{ asset('assets/dsms/js/bootstrap.min.js') }}"></script>
   </body>
</html>
