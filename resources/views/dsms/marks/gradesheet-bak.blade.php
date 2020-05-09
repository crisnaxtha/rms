@extends('dsms.layouts.sheet')

@section('content')
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
                    <td rowspan="1" colspan="3">{{ dm_getSubject($row->school_class_section_subject_id)->title }}</td>
                    <td> {{ dm_getSubject($row->school_class_section_subject_id)->credit_hour }}</td>
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
                    <td> 80 to below 90 </td>
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
@endsection
