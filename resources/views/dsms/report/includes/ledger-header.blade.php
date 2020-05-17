<div class="pull-center">
    @if(isset($data['ms_setting']))
    <h3><b>{{ $data['ms_setting']->title_1 }}</b></h3>
    <h6>{{ $data['ms_setting']->title_2 }}</h6>
    <h6>{{ dm_getExam($data['exam_id'])->title}}, {{ dm_getSession($data['session_id'])->session }}</h6>
    <h4 style="text-decoration: underline;;"><b>{{ $_panel }}</b></h4>
    @else
    <h1 style="color:red">Set Grade Sheet Setting First</h1>
    @endif
</div>
