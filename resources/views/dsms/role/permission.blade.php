@extends('dsms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dsms.includes.datatable-assets.css')

@endsection

@section('content')
<!-- page start-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
    <div class="col-md-12">
        <div class="panel">
            <div class="panel-heading">
                Assign Permission
                <a rel="group_1" href="#select_all" class="btn btn-success btn-xs">Select All</a>
                <a rel="group_1" href="#select_none" class="btn btn-danger btn-xs">Select None</a>
                <a rel="group_1" href="#invert_selection" class="btn btn-warning btn-xs">Invert Selection</a>
            </div>
            <div class="panel-body">
                    @include('dsms.includes.buttons.button-back')
                <div class="form" id="group_1">
                    <form class="cmxform form-horizontal tasi-form" id="signupForm" method="POST" action="{{ route('dsms.role.assign.update',['id' => $data['row']->id])}}">
                        @csrf
                        @if(count($data['permission']))
                        @foreach($data['permission'] as $row)
                        @if(array_key_exists($row->id, $data['p_id']))
                        @php $selected_checked_modules = "checked"; @endphp
                        @else
                        @php $selected_checked_modules = ""; @endphp
                        @endif
                        <div class="">
                            <label for="" class="control-label col-lg-8 col-sm-9">{{ $row['name'] }}</label>
                            <div class="col-lg-4 col-sm-3">
                                <input name="permission[]" type="checkbox" style="width: 20px" class="checkbox form-control" id="" value="{{ $row['id'] }}" {{ $selected_checked_modules }}/>
                            </div>
                        </div>
                        @endforeach
                        @endif
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-danger btn-xs" type="submit">Save</button>
                                <button class="btn btn-default btn-xs" type="button">Cancel</button>
                            </div>
                        </div>
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
