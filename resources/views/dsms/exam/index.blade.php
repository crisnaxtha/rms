@extends('dsms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dsms.includes.datatable-assets.css')

@endsection

@section('content')
<!-- page start-->
<div class="row">
    <div class="col-sm-4">
        <section class="panel">
            <section class="panel">
                <header class="panel-heading">
                   Add {{ $_panel }}
                </header>
                <div class="panel-body">
                        @include('dsms.includes.flash_message_error')
                    <div class=" form">
                        @if(isset($data['single']))
                            @include($_view_path.'.includes.form-edit')
                        @else
                            @include($_view_path.'.includes.form-create')
                        @endif
                    </div>
                </div>
            </section>
         </section>
    </div>
    <div class="col-sm-8">
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }} List
          </header>
          <div class="panel-body">
                {{-- @include('dsms.includes.buttons.button-create') --}}
                @include('dsms.includes.flash-message')
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                         <th>#</th>
                         <th>Name</th>
                         {{-- <th>Class Group</th> --}}
                         <th>Action</th>
                      </tr>
                   </thead>
                   <tbody>
                     @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->title }}</td>
                           {{-- <td>{{ $row->group }}</td> --}}
                           <td>
                              @include('dsms.includes.buttons.button-edit')
                              @include('dsms.includes.buttons.button-delete')
                           </td>
                        </tr>
                        @endforeach
                     @endif
                   </tbody>
                </table>
             </div>
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')

@include('dsms.includes.datatable-assets.js')

@endsection
