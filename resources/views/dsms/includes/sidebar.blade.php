<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            @if(Route::has('dsms.dashboard'))
            <li><a class="{{ ($_panel == 'Home') ? 'active' : '' }}" href="{{ URL::route('dsms.dashboard') }}"><i class="fa fa-dashboard"></i><span>{{__('Dashboard')}}</span></a></li>
            @endif
            @if(Route::has('dsms.class.index'))
            <li><a class="{{ ($_panel == 'Class') ? 'active' : '' }}" href="{{ URL::route('dsms.class.index') }}"><i class="fa fa-dashboard"></i><span>{{__('Classes')}}</span></a></li>
            @endif
            @if(Route::has('dsms.section.index'))
            <li><a class="{{ ($_panel == 'Section') ? 'active' : '' }}" href="{{ URL::route('dsms.section.index') }}"><i class="fa fa-dashboard"></i><span>{{__('Section')}}</span></a></li>
            @endif
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Posts' || $_panel == 'Category' || $_panel == "Pages" || $_panel == "File") ? 'active' : '' }}">
                    <i class="fa fa-rocket"></i>
                    <span>{{ __('Settings') }}</span>
                </a>
                <ul class="sub">
                        @if(Route::has('dsms.post.index'))
                        <li><a href="{{ URL::route('dsms.post.index') }}" class="{{ ($_panel == 'Posts') ? 'active' : '' }}"><i class="fa fa-book"></i><span>{{__('Posts')}}</span></a></li>
                        @endif

                </ul>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
