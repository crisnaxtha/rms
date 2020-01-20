@extends('dsms.layouts.app')

@section('content')
<!-- page start-->
<div class="row">
    <aside class="profile-nav col-lg-3">
        <section class="panel">
            <div class="user-heading round">
                @if(isset($data['row']->image))
                    <a href="#">
                        <img alt="" src="{{ asset($data['row']->image) }}" >
                    </a>
                @else
                    <a href="#">
                        <img alt="" src="{{ asset('assets/dsms/img/lochan.png') }}" >
                    </a>
                @endif
                <h1>{{ $data['row']->first_name }} {{ $data['row']->last_name }}</h1>
                <p>@php $cs = dm_schoolClassSection($data['row']->school_class_section_id) @endphp {{ $cs->class_title  }}({{ $cs->sec_title }})</p>
                <p>{{ $data['row']->email }}</p>
                <p>{{ $data['row']->mobile_no }}</p>
            </div>

            <ul class="nav nav-pills nav-stacked">
                @if(route::has($_base_route.'.show'))
                <li class="{{ (Route::current()->getName() == $_base_route.'.show') ? 'active' : '' }}"><a href="{{ route($_base_route.'.show', ['id' => $data['row']->id]) }}"> <i class="fa fa-user"></i> Profile</a></li>
                @endif
                <li class="{{ (Route::current()->getName() == $_base_route.'.edit') ? 'active' : ''  }}"><a href="{{ route($_base_route.'.edit', ['id' => $data['row']->id]) }}"> <i class="fa fa-edit"></i> Edit profile</a></li>
            </ul>

        </section>
    </aside>
    <aside class="profile-info col-lg-9">
        <section class="panel">
            <div class="bio-graph-heading">
                {{ $data['row']->first_name }} {{ $data['row']->last_name }}'s Profile
            </div>
            <div class="panel-body bio-graph-info">
                <h1>Bio Graph</h1>
                <div class="row">
                    <div class="bio-row">
                        <p><span>Admission No </span>: {{ $data['row']->admission_no }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Roll No. </span>: {{ $data['row']->roll_no }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Admission Date </span>: {{ $data['row']->admission_date }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Name </span>: {{ $data['row']->first_name }} {{ $data['row']->last_name }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>DOB </span>: {{ $data['row']->dob }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Email </span>: {{ $data['row']->email }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Mobile No </span>: {{ $data['row']->mobile_no }}</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Blood Group </span>: {{ $data['row']->mobile_no }}</p>
                    </div>
                </div>
            </div>
        </section>
    </aside>
</div>
<!-- page end-->

@endsection
