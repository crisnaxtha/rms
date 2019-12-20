@extends('dcms.layouts.app')

@section('css')
<link href="{{asset('assets/dcms/assets/jcrop/css/jquery.Jcrop.min.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/dcms/css/image-crop.css')}}" rel="stylesheet"/>

@endsection
@section('content')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                   {{ $_panel }}
                </header>
                <div class="panel-body">
                        @include('dcms.includes.buttons.button-back')
                    @include('dcms.includes.flash_message_error')
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                        dm_hinput('text','name', 'Album Name(<em style="color:red">*</em>)', 'name');
                        ?>
                        @foreach($data['lang'] as $lang)
                        <?php
                        dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                        dm_hinput('text','rows['.$loop->index.'][name]', "Album Name (<strong>$lang->name</strong>)(<em style='color:red'>*</em>)", 'rows.'.$loop->index.'.name');
                        ?>
                        @endforeach
                        <?php
                        dm_hinput('file', 'image', 'Album Feature Image', '', '');
                        ?>
                           {{-- <img src="http://127.0.0.1:8000/assets/site/images/thumbnail.jpg" id="demo1" alt="Jcrop Example" class="img-responsive"/> --}}
                            <img id="demo2" class="img-responsive previewimage" style=""  alt="Jcrop Example" class="img-responsive previewimage" height="500" width="500"/>
                        <?php
                        dm_hinput('number','order', "Order", 'order');
                        dm_hcheckbox('checkbox', 'status', 'Status');
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
<script src="{{asset('assets/dcms/assets/jcrop/js/jquery.color.js')}}"></script>
<script src="{{asset('assets/dcms/assets/jcrop/js/jquery.Jcrop.min.js')}}"></script>
<script src="{{asset('assets/dcms/js/form-image-crop.js')}}"></script>
<script>
    jQuery(function($) {
        var p = $(".previewimage");
        $("body").on("change", "#image", function(){
            var imageReader = new FileReader();
            imageReader.readAsDataURL(document.querySelector("#image").files[0]);
            imageReader.onload = function (oFREvent) {
                p.attr('src', oFREvent.target.result).fadeIn();
            };
        });
    });
</script>
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        FormImageCrop.init();
    });
</script>



@endsection
