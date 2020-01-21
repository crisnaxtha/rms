 <!-- Latest compiled and minified CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <!-- Optional theme -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="{{ asset('assets/dsms/dm_css/marksheet_style.css')}}">
@if(isset($data['std_result']))
@foreach($data['std_result'] as $key => $rows)
<!-- vertical center large Modal  start -->
<div class="modal fade top-modal-without-space" id="myModal{{ $loop->iteration }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content-wrap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Marksheet Preview</h4>
                </div>
                <div class="modal-body">

                    <page size="A4" style="border-style:double; padding:20px;">
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
                                        <h5>Class-VIII</h5>
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
                            <p>The grade secured by <b>{{ $key }}</b> Date of Birth <b>{{ $key }}</b> Symbol number <b>{{ $key}}</b>of<b> @foreach($data['school'] as $sc) @if($sc->id == $data['school_id']) {{ $sc->title }} @endif @endforeach</b> in basic education completion examination given below.
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
                                <tr>
                                    <td rowspan="1">1</td>
                                    <td rowspan="1" colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td colspan="3">C. Nepali </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td colspan="3">C. English </td>
                                    <td> 4</td>
                                    <td> C </td>
                                    <td> B+ </td>
                                    <td> C+ </td>
                                    <td> 2.4 </td>
                                    <td> </td>
                                </tr>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="8" class="footer">GPA</td>
                                    <td colspan="9"><b>3.73</b></td>
                                </tr>
                            </tfoot>
                        </table>

                        </br>

                        <table>
                            <thead>
                                <tr>
                                    <td>Interval in percent</td>
                                    <td> 90 to 100 </td>
                                    <td> 80 ta below 90 </td>
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
                                    <td style="font-size: 14px;">Outstanding</td>
                                    <td style="font-size: 14px;"> Excellent</td>
                                    <td style="font-size: 14px;"> Very Good</td>
                                    <td style="font-size: 14px;">Good</td>
                                    <td style="font-size: 14px;">Satisfactory </tdstyle="font-size: 14px;">
                                        <td style="font-size: 14px;">Acceptable </td>
                                        <td style="font-size: 14px;">Partially acceptable</td>
                                        <td style="font-size: 14px;">Insufficient</td>
                                        <td style="font-size: 14px;">Very Insufficient</td>

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

                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                    <button class="btn btn-warning" type="button"> Confirm</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- vertical center large Modal end -->
@endforeach
@endif
 <!-- Latest compiled and minified JavaScript -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
