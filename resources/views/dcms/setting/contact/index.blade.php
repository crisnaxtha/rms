@extends('dcms.layouts.app')

@section('content')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                   <h3>{{ $_panel }}</h3>
                </header>
                <div class="panel-body">
                        @include('dcms.includes.flash_message_error')                                        
                    <div class=" form">
                        <?php
                            if($row->id)
                        dm_hpostform(URL::route($_base_route.'.contact.store', ['id'=>$row->id]), 'POST');
                        dm_hinputUpdate('text','title', "Contact Title", $row->contact_title);
                        dm_hinputUpdate('text','sub_title', "Contact Sub-Title", $row->contact_sub_title);
                        dm_hinputUpdate('text','address_one', "Contact Address 1", $row->contact_address_1);
                        dm_hinputUpdate('text','address_two', "Contact Address 2", $row->contact_address_2);
                        dm_hinputUpdate('number','phone', "Contact Phone", $row->contact_phone);
                        dm_hinputUpdate('number','mobile', "Contact Mobile", $row->contact_mobile);
                        dm_hinputUpdate('email','email', "Contact Email", $row->contact_email);
                        dm_htextareaUpdate('map', "Contact Map", $row->contact_map);
                        
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