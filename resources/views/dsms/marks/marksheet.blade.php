@extends('dsms.layouts.sheet')

@section('content')

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

                @endphp

                @if(isset($data['result']))
                @foreach($data['result'] as $row)
                {{-- grand total  --}}
                    @php
                    $total_obtain_marks += $row->total_marks;
                    $total_theory_marks +=  dm_getSubject($row->school_class_section_subject_id)->theory_full_marks ;
                    $total_pratical_marks +=  dm_getSubject($row->school_class_section_subject_id)->practical_full_marks ;
                    $total_pass_theory_marks += dm_getSubject($row->school_class_section_subject_id)->theory_pass_marks;
                    $total_pass_pratical_marks += dm_getSubject($row->school_class_section_subject_id)->practical_pass_marks;
                    $total_obtain_theory_marks += $row->theory_get_marks;
                    $total_obtain_pratical_marks += $row->practical_get_marks;
                    @endphp
                <tr>
                    <td rowspan="1">{{ $loop->iteration }}</td>
                    <td rowspan="1" colspan="3">{{ dm_getSubject($row->school_class_section_subject_id)->title }}</td>
                    <td>{{ dm_getSubject($row->school_class_section_subject_id)->theory_full_marks }}</td>
                    <td>{{ dm_getSubject($row->school_class_section_subject_id)->practical_full_marks }}</td>
                    <td>{{ dm_getSubject($row->school_class_section_subject_id)->theory_pass_marks }}</td>
                    <td>{{ dm_getSubject($row->school_class_section_subject_id)->practical_pass_marks }}</td>
                    <td>{{ $row->theory_get_marks }}</td>
                    <td>{{ $row->practical_get_marks }}</td>
                    <td>{{ $row->total_marks }} </td>
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

        </br>

        </br>
@endsection
