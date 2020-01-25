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
               <div class="alert alert-block alert-warning fade in">
                  <strong>Backup: Database will be saved in server.</strong>
              </div>
                <a href="{{ route('dsms.database.backup') }}" type="button" class="btn btn-primary"><i class="fa fa-cloud-upload"></i>&nbsp;Backup In Server</a>
                <a href="{{ route('dsms.database.download') }}" type="button" class="btn btn-success"><i class="fa  fa-cloud-download"></i>&nbsp;Download to Your Computer</a>

                <div class="adv-table">
                  <table  class="display table table-bordered table-striped" id="dynamic-table">
                     <thead>
                        <tr>
                           <th>#</th>
                           <th>Database Table Name</th>
                        </tr>
                     </thead>
                     <tbody>
                       @if(isset($data['rows']))
                          @foreach($data['rows'] as $row)
                          <tr class="gradeX">
                             <td>{{ $loop->iteration }}</td>
                             <td>{{ $row }}</td>
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
