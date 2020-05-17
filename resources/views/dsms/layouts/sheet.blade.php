<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link href="{{ asset('assets/dsms/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Optional theme -->
    <link href="{{ asset('assets/dsms/assets/font-awesome/css/font-awesome.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
</head>

<body>
    <center>
        <span class="demo"><button onclick="window.print();return false;"><i class="fa fa-print"></i>&nbsp;&nbsp;Print</button></span>
    </center>
    <page size="A4" >
        <div class="wrapper">
            <div class="row report-header">
                <div class="col-md-2">
                    @if(isset($data['ms_setting']->logo_1))
                    <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="80" height="80">
                    @else
                    <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="80" height="80">
                    @endif
                </div>
                <div class="col-md-8" style="top:-26px; text-align:center;">
                    @if(isset($data['ms_setting']))
                    <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                    <h4 style="">{{ $data['ms_setting']->title_2 }}</h4>
                    <h3 style="text-transform: uppercase; padding: 10px 0;"><b>{{ $data['ms_setting']->title_3 }}</b></h3>
                    <h3 style="text-transform: uppercase; padding: 10px 0"><b>{{ $data['ms_setting']->title_4 }}</b></h3>
                    @else
                    <h1 style="color:red">Set Grade Sheet Setting First</h1>
                    @endif
                    {{-- <h5>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif</h5> --}}
                    {{-- <h4 style="text-decoration: underline;;"><b>GRADE-SHEET</b></h4> --}}
                </div>
                <div class="col-md-2 pull-right">
                    @if(isset($data['ms_setting']->logo_1))
                    <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="80" height="80">
                    @else
                    <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="80" height="80">
                    @endif
                </div>
            </div>

            <div class="para">
                <p>GRADE SECURED BY <b>{{ dm_getStudent($data['student_id'])->first_name }}</b>
                    DATE OF BIRTH <b>{{ dm_getStudent($data['student_id'])->dob_bs }}&nbsp;
                    BS({{ dm_getStudent($data['student_id'])->dob_ad }}&nbsp;AD)</b>
                        SYMBOL NUMBER <b>{{ dm_getStudent($data['student_id'])->roll_no }}
                    </b>GRADE <b>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif </b>
                        OF<b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b>
                        DISTRICT <b> @if(isset($data['ms_setting'])){{ $data['ms_setting']->title_5 }} @endif</b>
                        PROVINCE <b> @if(isset($data['ms_setting'])){{ $data['ms_setting']->title_6 }} @endif</b>
                        IN THE ANNUAL BASIC EDUCATION EXAMINATION ARE GIVEN BELOW</p>
            </div>



            @yield('content')

            <div class="row">
                <div class="col-md-12">
                  CHECKED BY:
                </div>
            </div>
            </br>
            <div class="row">
                <div class="col-md-6">
                    DATE OF ISSUE:&nbsp;{{ $data['ms_setting']->print_date }}
                </div>
                <div class="col-md-6 pull-right" style="margin-right: 10px; border-top: 1px solid #000">
                    EDUCATION OFFICER
                </div>
            </div>
        </div>
    </page>

    <!-- Latest compiled and minified JavaScript -->
    <script src="{{ asset('assets/dsms/js/jquery.js') }}"></script>
    <script src="{{ asset('assets/dsms/js/bootstrap.min.js') }}"></script>

</body>

</html>
