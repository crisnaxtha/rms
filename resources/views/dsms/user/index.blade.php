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
                         <th>User's Name</th>
                         <th>Email</th>
                         <th>Created Date</th>
                         <th>Role</th>
                         <th>Status</th>
                         <th>Action</th>
                      </tr>
                   </thead>
                   <tbody>
                     @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        @if($row->id == 1) @else
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->name }}</td>
                           <td>{{ $row->email }}</td>
                           <td>{{ $row->created_at}}<br><strong>[{{ $row->created_at->diffForHumans() }}]</strong></td>
                           <td>@if($row->role_id){{ $row->Role->name }}@else {{ "No Role Assign" }}@endif</td>
                           <td><?php dm_flag($row->status) ?></td>
                           <td>
                              @if(Auth::user()->id == $row->id)
                                 <button class="btn btn-danger btn-xs"> Self </button>
                              @else
                                 @include('dsms.includes.buttons.button-edit')
                                 @include('dsms.includes.buttons.button-delete')
                              @endif
                           </td>
                        </tr>
                        @endif
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
