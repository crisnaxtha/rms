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
                        <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="80" height="80">
                        @else
                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="80" height="80">
                        @endif
                    </div>
                    <div class="col-md-8" style="top:-26px; text-align:center;">
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
                    <div class="col-md-2 pull-right">
                        @if(isset($data['ms_setting']->logo_1))
                        <img src="{{asset($data['ms_setting']->logo_1)}}" alt="logo" width="80" height="80">
                        @else
                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="80" height="80">
                        @endif
                    </div>
                </div>

                <div class="paragraph">
                    <p>The grade secured by Mr/ Mrs <b>{{ dm_getStudent($data['student_id'])->first_name }}</b> Date of Birth <b>{{ dm_getStudent($data['student_id'])->dob_bs }}&nbsp;BS({{ dm_getStudent($data['student_id'])->dob_ad }}&nbsp;AD)</b> Symbol number <b>{{ dm_getStudent($data['student_id'])->roll_no }}</b> of<b>@if(isset( $data['school_id'])) {{ dm_getSchool($data['school_id'])->title }} @endif</b> in basic education completion examination given below.</p>
                </div>

                @yield('content')

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
            </div>

        </div>
    </section>

    <!-- Latest compiled and minified JavaScript -->
    <script src="{{ asset('assets/dsms/js/jquery.js') }}"></script>
    <script src="{{ asset('assets/dsms/js/bootstrap.min.js') }}"></script>

</body>

</html>
