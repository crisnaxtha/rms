@extends('dsms.layouts.app')

@section('content')

<div class="row">
        <div class="col-lg-8 col-md-8 col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                    <h3>{{ $_panel }}</h3>
                </header>
                <div class="panel-body">
                        @include('dsms.includes.buttons.button-back')
                        @include('dsms.includes.flash-message')

                    <form class="" action="{{ route('dsms.user.update', ['id' => $row->id]) }}" method="PUT" enctype="multipart/form-data">
                            {{ method_field('PUT'), csrf_field() }}
                            {{-- <h2 class="form-signin-heading">{{__('dsms_lang.register.info') }}</h2> --}}
                            <div class="">
                                <p>Enter your personal details below</p>
                                <div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
                                    <input type="text" class="form-control" name="name" placeholder="{{__('dsms_lang.register.name') }}" value="{{ $row->name }}"  autofocus>
                                    @if( $errors->has('name'))
                                    <span class="help-block">{{ $errors->first('name') }}</span>
                                    @endif
                                </div>
                                <div class="form-group {{ $errors->has('email') ? 'has-error' : ''}}">
                                    <input type="email" class="form-control" name="email" placeholder="{{__('dsms_lang.register.email') }}" value="{{ $row->email }}" disabled>
                                    @if( $errors->has('email'))
                                    <span class="help-block">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                {{-- @php dd(count($row->role())) @endphp --}}

                                @if(isset($roles))
                                <div class="form-group">
                                    <label name="role" for="inputSuccess">{{__('dsms_lang.register.role') }}</label>
                                        <select name="role_id" class="form-control m-bot15">
                                           <option value="">Select Role</option>
                                           @foreach($roles as $role)
                                            <option value="{{ $role->id }}" @if($role->id === $row->role_id) selected @endif>{{ $role->name }}</option>
                                            @endforeach
                                        </select>
                                </div>
                                @endif
                                @if(Auth::user()->role_super ===1)
                                <div class="checkbox">
                                    <label>
                                        <input type="hidden" name="role_super" value=0>
                                        <input type="checkbox" name="role_super" value=1 @if($row->role_super){{ "checked" }} @endif>{{ "Super Admin" }}
                                    </label>
                                </div>
                                @endif
                                <div class="checkbox">
                                    <label>
                                        <input type="hidden" name="status" value=0>
                                        <input type="checkbox" name="status" value=1 @if($row->status){{ "checked" }} @endif>{{__('dsms_lang.register.status') }}
                                    </label>
                                </div>

                                <button class="btn btn-success btn-xs" type="submit">{{__('dsms_lang.register.register') }}</button>
                                <a href="{{ URL::route($_base_route.'.index') }}"><button class="btn btn-danger btn-xs" type="button">{{__('Cancel') }}</button></a>



                            </div>

                        </form>

                    </div>
                </div>
            </section>
        </div>
</div>


@endsection

@section('js')

@endsection
