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
                                            <h3><b>First Title ( English )</b></h3>
                                            <h3><b>@php dm_hinputUpdate('text','title_1', "First Title  ( EN )", $row->title_1); @endphp</b></h3>

                                            <h3><b>First Title ( Nepali )</b></h3>
                                            <h3><b>@php dm_hinputUpdate('text','title_nepali_1', "First Title  ( NP )", $row->title_nepali_1); @endphp</b></h3>

                                            <h6>Second Title ( English )</h6>
                                            <h6>@php dm_hinputUpdate('text','title_2', "Second Title  ( EN )", $row->title_2); @endphp</h6>

                                            <h6>Second Title ( Nepali )</h6>
                                            <h6>@php dm_hinputUpdate('text','title_nepali_2', "Second Title  ( NP )", $row->title_nepali_2); @endphp</h6>

                                            <h6>Third Title ( English )</h6>
                                            <h6>@php dm_hinputUpdate('text','title_3', "Third Title  ( EN )", $row->title_3); @endphp</h6>

                                            <h6>Third Title ( Nepali )</h6>
                                            <h6>@php dm_hinputUpdate('text','title_nepali_3', "Third Title  ( NP )", $row->title_nepali_3); @endphp</h6>

                                            <h4><b>Fourth Title</b></h4>
                                            <h4><b>@php dm_hinputUpdate('text','title_4', "Forth Title", $row->title_4); @endphp</b></h4>

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
                            <br />
                            <div class="row report-header">
                                <div class="col-md-12 ">
                                    <div class="col-md-2"></div>
                                    <div class="col-md-8" style="top:-26px;">
                                        <div class="pull-center">

                                            <h6>District Name</h6>
                                            <h6>@php dm_hinputUpdate('text','title_5', "District", $row->title_5); @endphp</h6>
                                            <h6>Province Name</h6>
                                            <h6>@php dm_hinputUpdate('text','title_6', "Province", $row->title_6); @endphp</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-2"></div>

                                </div>
                            </div>
                            <br />
                            <div class="signature">
                                <div class="col-md-3">
                                    <date>
                                         Date:2067/02/02
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">Print Date (BS)</label><small class="req"> *</small>
                                            @if(isset($row->print_date))
                                                @php $date_bs = get_nepali_data($row->print_date);@endphp
                                            @endif
                                            <input id="print_date" name="print_date" placeholder="" type="text" class="form-control nepali-picker" value="@if(isset($date_bs)){{ $date_bs }}@endif" />
                                            <span class="text-danger"></span>
                                        </div>
                                    </date>
                                </div>

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
