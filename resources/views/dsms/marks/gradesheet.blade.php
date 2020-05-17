@extends('dsms.layouts.sheet')

@section('content')
        <table>
            <thead>
                <tr>
                    <td rowspan="2">S.N.</td>
                    <td rowspan="2" colspan="3" style="width:450px;"> SUBJECT </td>
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
                    $count = count($data['result']);
                    $total_credit_hour = 0;
                @endphp

                @if(isset($data['result']))
                @foreach($data['result'] as $row)
                {{-- grand total  --}}
                    @php
                    $total_grade_credit_hour += $row->grade_credit_hour;
                    if($row->grade_credit_hour == 0 || $row->grade_point == 0){
                        dd('here is the problem !! 0 divisor encounterd');
                    }
                    $total_credit_hour += ($row->grade_credit_hour / $row->grade_point);
                    @endphp
                <tr>
                    <td rowspan="1">{{ $loop->iteration }}</td>
                    <td rowspan="1" colspan="3">{{ dm_getSubject($row->school_class_section_subject_id)->title }}</td>
                    <td style="text-align: center">{{ dm_getSubject($row->school_class_section_subject_id)->credit_hour }}</td>
                    <td style="text-align: center">{{ $row->theory_grade }}</td>
                    <td style="text-align: center">{{ $row->practical_grade }}</td>
                    <td style="text-align: center">{{ $row->final_grade }}</td>
                    <td style="text-align: center">{{ $row->grade_point }}</td>
                    <td> </td>
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
                    <td colspan="8" class="footer"><b> GRADE POINT AVERAGE (GPA) </b></td>
                    <td colspan="9" style="text-align: center"><b>{{ round($gpa, 2) }}</b></td>
                </tr>
            </tfoot>
        </table>

        </br>
        <ol>
            <li>One Credit Hour Equals 32 Clock Hours</li>
            <li>TH: Theory, PR: Practical</li>
            <li>Ab *: Absent,<br> T*: Theroy Grade Missing <br> P*: Practical Grade Missing</li>
        </ol>
        </br>
@endsection
