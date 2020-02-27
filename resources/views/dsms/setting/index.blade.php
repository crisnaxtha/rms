@extends('dsms.layouts.app')

@section('css')
<link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('assets/dsms/nepali-datepicker/nepaliDatePicker.min.css')}}" />
@endsection
@section('content')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                   {{ $_panel }}
                </header>
                <div class="panel-body">
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store', ['id'=>$row->id]), 'POST');
                        ?>

                        <page size="A4" style="border-style:double; padding:20px;" >
                            <div class="row report-header">
                                <div class="col-md-12 ">
                                    <div class="col-md-2">
                                        <div class="pull-left">
                                            <img src="{{asset($row->logo_1)}}" alt="logo" width="100" height="100">
                                            @php dm_hinputUpdate('file', 'logo_1', 'Logo 1', '', ''); @endphp
                                        </div>
                                    </div>
                                    <div class="col-md-8" style="top:-26px;">
                                        <div class="pull-center">
                                            <h3><b>Thulung Dudhkoshi Rular Municipality</b></h3>
                                            <h3><b>@php dm_hinputUpdate('text','title_1', "Municipality Name", $row->title_1); @endphp</b></h3>
                                            <h6>Basic Level Examination</h6>
                                            <h6>@php dm_hinputUpdate('text','title_2', "Exam Level", $row->title_2); @endphp</h6>
                                            <h6>Mukli, Solikhumbu</h6>
                                            <h6>@php dm_hinputUpdate('text','title_3', "Address", $row->title_3); @endphp</h6>
                                            <h4><b>Basic Education Completion Examination</b></h4>
                                            <h4><b>@php dm_hinputUpdate('text','title_4', "Marksheet Heading", $row->title_4); @endphp</b></h4>
                                            <h5></h5>
                                            {{-- <h4 style="text-decoration: underline;;"><b>Grade-Sheet</b></h4> --}}
                                        </div>
                                    </div>

                                    <div class="col-md-2 logo">
                                        <div class="pull-right">
                                            <img src="{{asset($row->logo_2)}}" alt="logo" width="100" height="100">
                                            @php dm_hinputUpdate('file', 'logo_2', 'Logo 2', '', ''); @endphp
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{-- <div class="para">
                                <p>The grade secured by <b></b> Date of Birth <b></b> Symbol number <b></b> of<b> </b> in basic education completion examination given below.
                                </p>
                            </div> --}}

                            {{-- <table>
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
                                    <tr>

                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="8" class="footer">GPA</td>
                                        <td colspan="9"><b></b></td>
                                    </tr>
                                </tfoot>
                            </table> --}}

                            </br>

                            {{-- <table>
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
                            </table> --}}
                            </br>

                            {{-- <div class="row">
                                <div class="pull-left" style="margin-left: 30px;">
                                    <div class="box" style="height:80px;width:100px;border: 1px solid black;">
                                        <p style="text-align: center; margin-top: 55px;"> School Seal</p>
                                    </div>
                                </div>
                            </div> --}}
                            </br>

                            <div class="signature">
                                <div class="col-md-3">
                                    <date>
                                         Date:2067/02/02
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">Date Of Birth(BS)</label><small class="req"> *</small>
                                            @if(isset($row->print_date))
                                                @php $date_bs = get_nepali_data($row->print_date);@endphp
                                            @endif
                                            <input id="print_date" name="print_date" placeholder="" type="text" class="form-control nepali-picker" value="@if(isset($date_bs)){{ $date_bs }}@endif" />
                                            <span class="text-danger"></span>
                                        </div>
                                    </date>
                                </div>
                                {{-- <div class="col-md-2">
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
                                </div> --}}
                            </div>

                        </page>

                        <?php
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>
                    </div>
                </div>
            </section>
        </div>
    </div>
@endsection

@section('js')
<script type="text/javascript" src="{{asset('assets/dsms/nepali-datepicker/jquery.nepaliDatePicker.min.js')}}"></script>
<script>
    $(".nepali-picker").nepaliDatePicker({
        dateFormat: "%y-%m-%d",
        closeOnDateSelect: true
    });
</script>
@endsection
