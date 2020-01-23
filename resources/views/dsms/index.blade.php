@extends('dsms.layouts.app')

@section('content')
 <!--state overview start-->
 <div class="row state-overview">
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol terques">
                <i class="fa fa-users"></i>
            </div>
            <div class="value">
                <h1 class="count">
                    {{ count($data['student']) }}
                </h1>
                <p>Total Students</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol red">
                <i class="fa fa-tags"></i>
            </div>
            <div class="value">
                <h1 class=" count2">
                    {{ count($data['school']) }}
                </h1>
                <p>Total School</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol yellow">
                <i class="fa fa-shopping-cart"></i>
            </div>
            <div class="value">
                <h1 class=" count3">
                    {{ count($data['class']) }}
                </h1>
                <p>Total Class</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol blue">
                <i class="fa fa-bar-chart-o"></i>
            </div>
            <div class="value">
                <h1 class=" count4">
                    {{ count($data['subject'] )}}
                </h1>
                <p>Total Subject</p>
            </div>
        </section>
    </div>
</div>
<!--state overview end-->
@endsection

@section('js')
@include('dsms.includes.flash-message')

@endsection
