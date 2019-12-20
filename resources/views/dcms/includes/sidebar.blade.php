<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            @if(Route::has('dcms.dashboard'))
            <li><a class="{{ ($_panel == 'Home') ? 'active' : '' }}" href="{{ URL::route('dcms.dashboard') }}"><i class="fa fa-dashboard"></i><span>{{__('Dashboard')}}</span></a></li>
            @endif
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Posts' || $_panel == 'Category' || $_panel == "Pages" || $_panel == "File") ? 'active' : '' }}">
                    <i class="fa fa-rocket"></i>
                    <span>{{ __('Settings') }}</span>
                </a>
                <ul class="sub">
                        @if(Route::has('dcms.post.index'))
                        <li><a href="{{ URL::route('dcms.post.index') }}" class="{{ ($_panel == 'Posts') ? 'active' : '' }}"><i class="fa fa-book"></i><span>{{__('Posts')}}</span></a></li>
                        @endif

                </ul>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
