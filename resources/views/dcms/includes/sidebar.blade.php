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
                    <span>{{ __('Contents') }}</span>
                </a>
                <ul class="sub">
                        @permission('post-list')
                        @if(Route::has('dcms.post.index'))
                        <li><a href="{{ URL::route('dcms.post.index') }}" class="{{ ($_panel == 'Posts') ? 'active' : '' }}"><i class="fa fa-book"></i><span>{{__('Posts')}}</span></a></li>
                        @endif
                        @endpermission
                        @permission('category-list')
                        @if(Route::has('dcms.category.index'))
                        <li><a href="{{ URL::route('dcms.category.index') }}" class="{{ ($_panel == 'Category') ? 'active' : '' }}"><i class="fa fa-list-alt"></i><span>{{__('Categories')}}</span></a></li>
                        @endif
                        @endpermission
                        @permission('page-list')
                        @if( Route::has('dcms.page.index'))
                        <li><a class="{{ ($_panel == 'Pages') ? 'active' : '' }}" href="{{ URL::route('dcms.page.index') }}" ><i class="fa fa-file-o"></i><span>{{__('Pages')}}</span></a></li>
                        @endif
                        @endpermission
                        @if(Route::has('dcms.file.index'))
                        <li><a class="{{ ($_panel == 'File') ? 'active' : '' }}" href="{{ URL::route('dcms.file.index') }}" ><i class="fa fa-file"></i><span>{{__('Content Files')}}</span></a></li>
                        @endif

                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Institute' || $_panel == 'Faculty' || $_panel == 'Program Category') ? 'active' : '' }}">
                    <i class="fa fa-plus"></i>
                    <span>{{ __('Extended Pages') }}</span>
                </a>
                <ul class="sub">
                        @if( Route::has('dcms.institute.category.index'))
                        <li><a class="{{ ($_panel == 'Program Category') ? 'active' : '' }}" href="{{ URL::route('dcms.institute.category.index') }}" ><i class="fa fa-file-o"></i><span>{{__('Program Category')}}</span></a></li>
                        @endif
                        @if( Route::has('dcms.faculty.index'))
                        <li><a class="{{ ($_panel == 'Faculty') ? 'active' : '' }}" href="{{ URL::route('dcms.faculty.index') }}" ><i class="fa fa-file-o"></i><span>{{__('Faculty')}}</span></a></li>
                        @endif
                        @permission('affiliated-list')
                        @if( Route::has('dcms.institute.index'))
                        <li><a class="{{ ($_panel == 'Institute') ? 'active' : '' }}" href="{{ URL::route('dcms.institute.index') }}" ><i class="fa fa-file-o"></i><span>{{__('Institute')}}</span></a></li>
                        @endif
                        @endpermission
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Sliders' || $_panel == 'Links' || $_panel == "Popup" || $_panel == 'Services' || $_panel == 'Data' || $_panel == 'Central Department' || $_panel == 'Campus' || $_panel == "Province") ? 'active' : '' }}">
                    <i class="fa fa-shopping-cart"></i>
                    <span>{{ __('Accessories') }}</span>
                </a>
                <ul class="sub">
                    @permission('slider-list')
                    @if( Route::has('dcms.slider.index'))
                    <li><a class="{{ ($_panel == 'Sliders') ? 'active' : '' }}" href="{{ URL::route('dcms.slider.index') }}" ><i class="fa fa-arrows-h"></i><span>{{__('Sliders')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('link-list')
                    @if( Route::has('dcms.link.index'))
                    <li><a class="{{ ($_panel == 'Links') ? 'active' : '' }}" href="{{ URL::route('dcms.link.index') }}" ><i class="fa fa-link"></i><span>{{__('Links')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('popup-list')
                    @if( Route::has('dcms.popup.index'))
                        <li class="{{ ($_panel == 'Popup') ? 'active' : '' }}"><a href="{{ URL::route('dcms.popup.index') }}" ><i class="fa fa-square-o"></i>&nbsp;&nbsp;<span>{{__('Pop Up') }}</span></a></li>
                    @endif
                    @endpermission
                    @permission('service-list')
                    @if( Route::has('dcms.service.index'))
                    <li><a class="{{ ($_panel == 'Services') ? 'active' : '' }}" href="{{ URL::route('dcms.service.index') }}" ><i class="fa fa-bars"></i><span>{{__('Services') }}</span></a></li>
                    @endif
                    @endpermission
                    @permission('data-list')
                    @if( Route::has('dcms.data.index'))
                    <li><a href="{{ URL::route('dcms.data.index') }}" class="{{ ($_panel == 'Data' || $_panel == 'Scholarship' || $_panel == 'National') ? 'active' : '' }} dropdown-click">
                            <i class="fa fa-gears"></i>
                            <span>{{ __('Data') }}</span>
                        </a></li>
                    @endif
                    @endpermission
                    @if( Route::has('dcms.central_department.index'))
                    <li>
                        <a href="{{ URL::route('dcms.central_department.index') }}" class="{{ ($_panel == 'Central Department' ) ? 'active' : '' }} dropdown-click">
                            <i class="fa fa-dot-circle-o"></i>
                            <span>{{ __('Central Department') }}</span>
                        </a>
                    </li>
                    @endif
                    @if( Route::has('dcms.campus.index'))
                    <li>
                        <a href="{{ URL::route('dcms.campus.index') }}" class="{{ ($_panel == 'Campus' ) ? 'active' : '' }} dropdown-click">
                            <i class="fa fa-heart"></i>
                            <span>{{ __('Campus') }}</span>
                        </a>
                    </li>
                    @endif
                    @if( Route::has('dcms.province.index'))
                    <li>
                        <a href="{{ URL::route('dcms.province.index') }}" class="{{ ($_panel == 'Province' ) ? 'active' : '' }} dropdown-click">
                            <i class="fa fa-heart"></i>
                            <span>{{ __('Province') }}</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Office Branch' || $_panel == 'Staff') ? 'active' : '' }}">
                    <i class="fa fa-inbox"></i>
                    <span>{{ __('Office') }}</span>
                </a>
                <ul class="sub">
                    @permission('branch-list')
                    @if( Route::has('dcms.branch.index'))
                    <li><a class="{{ ($_panel == 'Office Branch') ? 'active' : '' }}" href="{{ URL::route('dcms.branch.index') }}" ><i class="fa fa-sitemap"></i><span>{{__('Branch Office')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('staff-list')
                    @if( Route::has('dcms.staff.index'))
                    <li><a class="{{ ($_panel == 'Staff') ? 'active' : '' }}" href="{{ URL::route('dcms.staff.index') }}" ><i class="fa fa-users"></i><span>{{__('Staff')}}</span></a></li>
                    @endif
                    @endpermission
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Users' || $_panel == 'Role' || $_panel == 'Tracker') ? 'active' : '' }}">
                    <i class="fa fa-users"></i>
                    <span>{{ __('User and Role') }}</span>
                </a>
                <ul class="sub">
                    @permission('user-list')
                    @if( Route::has('dcms.user.index'))
                    <li><a class="{{ ($_panel == 'Users') ? 'active' : '' }}" href="{{ URL::route('dcms.user.index') }}" ><i class="fa fa-user"></i><span>{{__('Users')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('role-index')
                    @if( Route::has('dcms.role.index'))
                    <li><a class="{{ ($_panel == 'Role') ? 'active' : '' }}" href="{{ URL::route('dcms.role.index') }}" ><i class="fa fa-user"></i><span>{{__('Role')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('tracker-list')
                    @if( Route::has('dcms.tracker.index'))
                    <li><a class="{{ ($_panel == 'Tracker') ? 'active' : '' }}" href="{{ URL::route('dcms.tracker.index') }}" ><i class="fa fa-map-marker"></i><span>{{__('User Tracker')}}</span></a></li>
                    @endif
                    @endpermission
                </ul>
            </li>

            @permission('album-list')
            @if( Route::has('dcms.album.index'))
            <li><a class="{{ ($_panel == 'Album' || $_panel == 'Gallery') ? 'active' : '' }}" href="{{ URL::route('dcms.album.index') }}" ><i class="fa  fa-picture-o"></i><span>{{__('Photo Album')}}</span></a></li>
            @endif
            @endpermission
            @permission('menu-list')
                @if( Route::has('dcms.menu.index'))
                <li><a class="{{ ($_panel == 'Menus') ? 'active' : '' }}" href="{{ URL::route('dcms.menu.index') }}" ><i class="fa fa-bars"></i><span>{{__('Menus')}}</span></a></li>
                @endif
            @endpermission
            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_base_route == 'dcms.setting' || $_panel == 'DB Backup' || $_panel == 'Language') ? 'active' : '' }}">
                    <i class="fa fa-gears"></i>
                    <span>{{ __('Settings') }}</span>
                </a>
                <ul class="sub">
                    @permission('general-setting')
                    @if(Route::has('dcms.setting.index'))
                        <li class="{{ ($_panel == 'Setting') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.index') }}">{{ __('General Settings') }}</a></li>
                    @endif
                    @endpermission
                    {{-- @if(Route::has('dcms.setting.about.index'))
                        <li class="{{ ($_panel == 'About') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.about.index') }}">{{ __('About Us') }}</a></li>
                    @endif --}}
                    @permission('social-setting')
                    @if(Route::has('dcms.setting.contact.index'))
                        <li class="{{ ($_panel == 'Contact') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.contact.index') }}">{{ __('Contact Info') }}</a></li>
                    @endif
                    @endpermission
                    @permission('social-setting')
                    @if(Route::has('dcms.setting.social.index'))
                        <li class="{{ ($_panel == 'Social Profile') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.social.index') }}">{{ __('Social Linkss') }}</a></li>
                    @endif
                    @endpermission
                    @permission('database-table-list')
                    @if( Route::has('dcms.database.index'))
                    <li><a class="{{ ($_panel == 'DB Backup') ? 'active' : '' }}" href="{{ URL::route('dcms.database.index') }}" ><i class="fa fa-cloud-download"></i><span>{{__('DB Backup')}}</span></a></li>
                    @endif
                    @endpermission
                    @permission('language-list')
                    @if(Route::has('dcms.language.index'))
                    <li><a class="{{ ($_panel == 'Language') ? 'active' : '' }}" href="{{ URL::route('dcms.language.index') }}" ><i class="fa fa-globe"></i><span>{{__('Language')}}</span></a></li>
                    @endif
                    @endpermission
                </ul>
            </li>
            {{-- <li class="sub-menu">
                <ul class="sub">
                    @if(Route::has('dcms.data.scholarship.index'))
                        <li class="{{ ($_panel == 'Scholarship') ? 'active' : '' }}"><a href="{{ URL::route('dcms.data.scholarship.index') }}">{{ __('Scholarship Data') }}</a></li>
                    @endif
                    @if(Route::has('dcms.data.national.index'))
                        <li class="{{ ($_panel == 'National') ? 'active' : '' }}"><a href="{{ URL::route('dcms.data.national.index') }}">{{ __('National Data') }}</a></li>
                    @endif
                </ul>
            </li> --}}

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Journal Category' || $_panel == 'Journal Content' || $_panel == "Journal Files" || $_panel == 'Services' || $_panel == 'Data') ? 'active' : '' }}">
                    <i class="fa fa-book"></i>
                    <span>{{ __('Journal') }}</span>
                </a>
                <ul class="sub">
                    @if( Route::has('dcms.journal.category.index'))
                    <li><a class="{{ ($_panel == 'Journal Category') ? 'active' : '' }}" href="{{ URL::route('dcms.journal.category.index') }}" ><i class="fa fa-list"></i><span>{{__('Journal Category')}}</span></a></li>
                    @endif

                    @if( Route::has('dcms.journal.index'))
                    <li><a class="{{ ($_panel == 'Journal Content') ? 'active' : '' }}" href="{{ URL::route('dcms.journal.index') }}" ><i class="fa fa-file"></i><span>{{__('Journal Content')}}</span></a></li>
                    @endif

                    @if( Route::has('dcms.journal.file.index'))
                    <li><a class="{{ ($_panel == 'Journal Files') ? 'active' : '' }}" href="{{ URL::route('dcms.journal.file.index') }}" ><i class="fa fa-file"></i><span>{{__('Journal Files')}}</span></a></li>
                    @endif


                </ul>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
