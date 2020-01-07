@extends('dsms.layouts.app')

@section('content')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                   {{ $_panel }}
                </header>
                <div class="panel-body">
                        {{-- @include('dcms.includes.flash-message') --}}
                    <div class=" form">
                        <form id="form1" action="{{ $_base_route.'.store' }}"  id="" name="" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                            @csrf
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Admission Number</label> <small class="req"> *</small>
                                    <input autofocus="" id="admission_no" name="admission_no" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Roll Number</label>
                                    <input id="roll_no" name="roll_no" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Class</label><small class="req"> *</small>
                                    <select id="class_id" name="class_id" class="form-control">
                                        <option value="">Select</option>
                                        <option value="1">Class 1</option>
                                        <option value="2">Class 2</option>
                                        <option value="3">Class 3</option>
                                    </select>
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Section</label><small class="req"> *</small>
                                    <select id="section_id" name="section_id" class="form-control">
                                        <option value="">Select</option>
                                    </select>
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">First Name</label><small class="req"> *</small>
                                    <input id="firstname" name="firstname" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Last Name</label>
                                    <input id="lastname" name="lastname" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputFile"> Gender</label><small class="req"> *</small>
                                    <select class="form-control" name="gender">
                                        <option value="">Select</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date Of Birth</label><small class="req"> *</small>
                                    <input id="dob" name="dob" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Religion</label>
                                    <input id="religion" name="religion" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mobile Number</label>
                                    <input id="mobileno" name="mobileno" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input id="email" name="email" placeholder="" type="text" class="form-control" value="" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Admission Date</label>
                                    <input id="admission_date" name="admission_date" placeholder="" type="text" class="form-control" value="01/07/2020" readonly="readonly" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exampleInputFile">Student Photo</label>
                                    <div>
                                        <input class="filestyle form-control" type='file' name='file' id="file" size='20' />
                                    </div>
                                    <span class="text-danger"></span></div>
                            </div>

                            <div class="col-md-3 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Blood Group</label>
                                    <select class="form-control" rows="3" placeholder="" name="blood_group">
                                        <option value="">Select</option>
                                        <option value="O+">O+</option>

                                        <option value="A+">A+</option>

                                        <option value="B+">B+</option>

                                        <option value="AB+">AB+</option>

                                        <option value="O-">O-</option>

                                        <option value="A-">A-</option>

                                        <option value="B-">B-</option>

                                        <option value="AB-">AB-</option>

                                    </select>

                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Student House</label>
                                    <select class="form-control" rows="3" placeholder="" name="house">
                                        <option value="">Select</option>
                                        <option value="1">Blue</option>

                                        <option value="2">Green</option>

                                        <option value="3">Red</option>

                                        <option value="4">Yellow</option>

                                    </select>
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Height</label>
                                    <input type="text" name="height" class="form-control" value="">
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Weight</label>
                                    <input type="text" name="weight" class="form-control" value="">
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">As on Date</label>
                                    <input type="text" id="measure_date" value="01/07/2020" name="measure_date" class="form-control">
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <?php
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <?php


    ?>

@endsection

@section('js')

@endsection
