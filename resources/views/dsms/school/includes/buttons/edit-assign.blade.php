@if(Route::has('dsms.class.assign'))
<div class="btn-group">
    <a href="{{ route('dsms.class.assign', ['id' => $row->id])}}" class="btn btn-success btn-xs"><i class="fa fa-plus">&nbsp;Assign Section</i></a>
</div>
@endif
