@if(Route::has($_base_route.'.assign'))
<div class="btn-group">
    <a href="{{ route($_base_route.'.assign', ['id' => $row->id])}}" class="btn btn-success btn-xs"><i class="fa fa-plus">&nbsp;Assign Class</i></a>
</div>
@endif
