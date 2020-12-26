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
        <button onclick="window.print();" class="demo btn btn-success"><i class="fa fa-print"></i>&nbsp;&nbsp;Print</button>
    </center>
    <section id="report">
        <div class="page">

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
                        <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
                        <h4 style="">{{ $data['ms_setting']->title_2 }}</h4>
                        <h2 style="text-transform: uppercase; padding: 10px 0;"><b>{{ $data['ms_setting']->title_3 }}</b></h2>
                        <h2 style="text-transform: uppercase; padding: 10px 0"><b>{{ $data['ms_setting']->title_4 }}</b></h2>
                        @else
                        <h1 style="color:red">Set Grade Sheet Setting First</h1>
                        @endif
                        {{-- <h5>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif</h5> --}}
                        {{-- <h4 style="text-decoration: underline;;"><b>GRADE-SHEET</b></h4> --}}
                    </div>
                    <div class="col-md-2 pull-right">
                        @if(isset($data['ms_setting']->logo_2))
                        <img src="{{asset($data['ms_setting']->logo_2)}}" alt="logo" width="100" height="100">
                        @else
                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                        @endif
                    </div>
                </div>

                <div class="paragraph" style="text-align: justify">
                    <p>Grade secured by Mr/ Mrs <b>{{ dm_getStudent($data['student_id'])->first_name }}</b>
                        date of birth <b>{{ dm_getStudent($data['student_id'])->dob_bs }}&nbsp;
                        BS&nbsp;(&nbsp;{{ dm_getStudent($data['student_id'])->dob_ad }}&nbsp;AD&nbsp;)</b>
                            symbol number <b>{{ dm_getStudent($data['student_id'])->roll_no }}
                        </b>grade <b>@if(isset( $data['class_id'])) {{ dm_getClass($data['class_id'])->title }} @endif </b>
                            of<b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b>
                            district <b> @if(isset($data['ms_setting'])){{ $data['ms_setting']->title_5 }} @endif</b>
                            province <b> @if(isset($data['ms_setting'])){{ $data['ms_setting']->title_6 }} @endif</b>
                            in the annual basic education examination are given below:</p>
                </div>

                @yield('content')

                <div class="row">
                    <div class="col-md-12">
                    CHECKED BY:
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        DATE OF ISSUE:&nbsp;{{ $data['ms_setting']->print_date }}
                    </div>
                    <div class="col-md-6 pull-right" style="margin-right: 10px; border-top: 1px solid #000">
                        EDUCATION OFFICER
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Latest compiled and minified JavaScript -->
    <script src="{{ asset('assets/dsms/js/jquery.js') }}"></script>
    <script src="{{ asset('assets/dsms/js/bootstrap.min.js') }}"></script>

</body>

</html>
