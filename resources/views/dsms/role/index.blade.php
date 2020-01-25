@extends('dsms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dsms.includes.datatable-assets.css')

@endsection

@section('content')
<!-- page start-->
<div class="row">
    <div class="col-sm-12">
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }}
          </header>
          <div class="panel-body">
                @include('dsms.includes.buttons.button-create')
                @include('dsms.includes.flash-message')
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                         <th>#</th>
                         <th>Name</th>
                         <th>Slug</th>
                         <th>Status</th>
                         <th>Action</th>
                      </tr>
                   </thead>
                   <tbody>
                     @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->name }}</td>
                           <td>{{ $row->slug }}</td>
                           <td width="25px" class="hidden-phone">
                              <?php dm_flag($row->status) ?>
                        </td>
                           <td>
                              @include('dsms.role.includes.buttons.edit-assign')
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
