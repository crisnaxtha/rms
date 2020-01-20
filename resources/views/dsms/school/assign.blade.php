@extends('dsms.layouts.app')
@section('content')
<!-- page start-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
    <div class="col-md-12">
        <div class="panel">
            <div class="panel-heading">
                Assign Classes
                @include('dsms.includes.buttons.button-back')
                <a rel="group_1" href="#select_all" class="btn btn-success btn-xs">Select All</a>
                <a rel="group_1" href="#select_none" class="btn btn-danger btn-xs">Select None</a>
                <a rel="group_1" href="#invert_selection" class="btn btn-warning btn-xs">Invert Selection</a>
            </div>
            <div class="panel-body">
                <div class="form" id="group_1">
                    <form class="cmxform form-horizontal tasi-form" id="signupForm" method="POST" action="{{ route($_base_route.'.assign.update',['id' => $data['row']->id])}}">
                        @csrf
                        @if(count($data['class']))
                        @foreach($data['class'] as $row)
                        @if(array_key_exists($row->id, $data['p_id']))
                        @php $selected_checked_modules = "checked"; @endphp
                        @else
                        @php $selected_checked_modules = ""; @endphp
                        @endif
                        <div class="" style="display:flex;">
                            {{-- <div class="col-lg-10 col-sm-9"> --}}
                                <input name="assign[]" type="checkbox" style="width: 20px" class="checkbox form-control" id="" value="{{ $row['id'] }}" {{ $selected_checked_modules }}/>
                            {{-- </div> --}}
                            <label for="" class="control-label col-lg-2 col-sm-3">{{ $row['title'] }}</label>

                        </div>
                        @endforeach
                        @endif
                        <?php
                            dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        ?>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
@include('dsms.includes.datatable-assets.js')
@include('dsms.includes.flash-message')
<script type="text/javascript">
    $(document).ready( function() {
        // Select all
        $("A[href='#select_all']").click( function() {
            $("#" + $(this).attr('rel') + " INPUT[type='checkbox']").attr('checked', true);
            return false;
        });
        // Select none
        $("A[href='#select_none']").click( function() {
            $("#" + $(this).attr('rel') + " INPUT[type='checkbox']").attr('checked', false);
            return false;
        });
        // Invert selection
        $("A[href='#invert_selection']").click( function() {
            $("#" + $(this).attr('rel') + " INPUT[type='checkbox']").each( function() {
                $(this).attr('checked', !$(this).attr('checked'));
            });
            return false;
        });
    });
</script>
@endsection