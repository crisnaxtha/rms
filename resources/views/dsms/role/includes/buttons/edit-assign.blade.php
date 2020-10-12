@if(Route::has('dsms.role.assign'))
<div class="btn-group">
    <a href="{{ route('dsms.role.assign', ['id' => $row->id])}}" class="btn btn-success btn-xs"><i class="fa fa-plus">&nbsp;Assign Permission</i></a>
</div>
@endif
