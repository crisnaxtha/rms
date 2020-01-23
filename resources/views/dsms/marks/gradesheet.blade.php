<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">


</head>

<body>
    <center>
        <span class="demo"><button onclick="window.print();return false;"><i class="fa fa-print"></i>&nbsp;&nbsp;Print</button></span>
    </center>
    <page size="A4" style="border-style:double; padding:20px;" >
        <div class="row report-header">
            <div class="col-md-12 ">
                <div class="col-md-2">
                    <div class="pull-left">
                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                    </div>
                </div>
                <div class="col-md-8" style="top:-26px;">
                    <div class="pull-center">
                        <h3><b>Thulung Dudhkoshi Rular Municipality</b></h3>
                        <h6>Basic Level Examination</h6>
                        <h6>Mukli, Solikhumbu</h6>
                        <h4><b>Basic Education Completion Examination</b></h4>
                        <h5>@foreach($data['class'] as $cl) @if($cl->id == $data['class_id']) {{ $cl->title }} @endif @endforeach</h5>
                        <h4 style="text-decoration: underline;;"><b>Grade-Sheet</b></h4>
                    </div>
                </div>

                <div class="col-md-2 logo">
                    <div class="pull-right">
                        <img src="{{asset('assets/dsms/img/marksheet/logo.png')}}" alt="logo" width="100" height="100">
                    </div>
                </div>
            </div>
        </div>

        <div class="para">
            <p>The grade secured by <b>{{ dm_getStudent($data['student_id'])->first_name }}</b> Date of Birth <b>{{ dm_getStudent($data['student_id'])->dob }}</b> Symbol number <b>{{ dm_getStudent($data['student_id'])->roll_no }}</b> of<b> @foreach($data['school'] as $sc) @if($sc->id == $data['school_id']) {{ $sc->title }} @endif @endforeach</b> in basic education completion examination given below.
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
                    $count = count($data['result']);
                @endphp

                @if(isset($data['result']))
                @foreach($data['result'] as $row)
                {{-- grand total  --}}
                    @php
                    $total_grade_credit_hour += $row->grade_credit_hour;
                    @endphp
                <tr>
                    <td rowspan="1">{{ $loop->iteration }}</td>
                    <td rowspan="1" colspan="3">{{ dm_getSubject($row->exam_schedules_id)->title }}</td>
                    <td> {{ dm_getSubject($row->exam_schedules_id)->credit_hour }}</td>
                    <td> {{  $row->theory_grade }}</td>
                    <td>{{ $row->practical_grade }}</td>
                    <td>{{ $row->final_grade }}</td>
                    <td>{{ $row->grade_point }}</td>
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
                <date> Date:2067/02/02</date>
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

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
</body>

</html>
