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
                   {{ $_panel }}
                </header>
                <div class="panel-body">
                        @include('dsms.includes.flash-message')
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
             {{ $_panel }}
          </header>
          <div class="panel-body">
                {{-- @include('dsms.includes.buttons.button-create') --}}
                @include('dsms.includes.flash-message')
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                         <th>#</th>
                         <th>School Code</th>
                         <th>School Name</th>
                         <th>Action</th>
                      </tr>
                   </thead>
                   <tbody>
                     @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->code }}</td>
                           <td>{{ $row->title }}</td>
                           <td>
                              @include('dsms.school.includes.buttons.edit-assign')
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
