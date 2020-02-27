<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            @if(Route::has('dsms.dashboard'))
            <li><a class="{{ ($_panel == 'Home') ? 'active' : '' }}" href="{{ URL::route('dsms.dashboard') }}"><i class="fa fa-dashboard"></i><span>{{__('Dashboard')}}</span></a></li>
            @endif

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Session' ||$_panel == 'Class' || $_panel == 'Section' || $_panel == 'Subject' || $_panel == 'Assign Subject' || $_panel == 'School' || $_panel == 'Assign Section' || $_panel == 'Assign Class') ? 'active' : '' }}">
                    <i class="fa fa-book"></i>
                    <span>{{ __('Academics') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.session.index'))
                    <li><a class="{{ ($_panel == 'Session') ? 'active' : '' }}" href="{{ URL::route('dsms.session.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Session')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.school.index'))
                    <li><a class="{{ ($_panel == 'School') ? 'active' : '' }}" href="{{ URL::route('dsms.school.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('School')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.class.index'))
                    <li><a class="{{ ($_panel == 'Class') ? 'active' : '' }}" href="{{ URL::route('dsms.class.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Classes')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.assign_class.index'))
                    <li><a class="{{ ($_panel == 'Assign Class') ? 'active' : '' }}" href="{{ URL::route('dsms.assign_class.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Assign Class')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.section.index'))
                    <li><a class="{{ ($_panel == 'Section') ? 'active' : '' }}" href="{{ URL::route('dsms.section.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Section')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.assign_section.index'))
                    <li><a class="{{ ($_panel == 'Assign Section') ? 'active' : '' }}" href="{{ URL::route('dsms.assign_section.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Assign Section')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.subject.index'))
                    <li><a class="{{ ($_panel == 'Subject') ? 'active' : '' }}" href="{{ URL::route('dsms.subject.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Subject')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.assign_subject.index'))
                    <li><a class="{{ ($_panel == 'Assign Subject') ? 'active' : '' }}" href="{{ URL::route('dsms.assign_subject.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Assign Subject')}}</span></a></li>
                    @endif

                </ul>
            </li>

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Exam' || $_panel == 'Exam Schedule' || $_panel == 'Marks Register' || $_panel == 'Marks Grade' || $_panel == 'Settings') ? 'active' : '' }}">
                    <i class="fa fa-edit"></i>
                    <span>{{ __('Examination') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.exam.index'))
                    <li><a class="{{ ($_panel == 'Exam') ? 'active' : '' }}" href="{{ URL::route('dsms.exam.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Exam List')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.exam_schedule.index'))
                    <li><a class="{{ ($_panel == 'Exam Schedule') ? 'active' : '' }}" href="{{ URL::route('dsms.exam_schedule.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Exam Schedule')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.marks.index'))
                    <li><a class="{{ ($_panel == 'Marks Register') ? 'active' : '' }}" href="{{ URL::route('dsms.marks.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Marks Register')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.setting.index'))
                    <li><a class="{{ ($_panel == 'Settings') ? 'active' : '' }}" href="{{ URL::route('dsms.setting.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Grade Sheet Settings')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.grade.index'))
                    <li><a class="{{ ($_panel == 'Marks Grade') ? 'active' : '' }}" href="{{ URL::route('dsms.grade.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Marks Grade')}}</span></a></li>
                    @endif
                </ul>
            </li>

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Student Admission' || $_panel == 'Student Details') ? 'active' : '' }}">
                    <i class="fa fa-group"></i>
                    <span>{{ __('Student Information') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.student.index'))
                    <li><a class="{{ ($_panel == 'Student Details') ? 'active' : '' }}" href="{{ URL::route('dsms.student.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Student Details')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.student.create'))
                    <li><a class="{{ ($_panel == 'Student Admission') ? 'active' : '' }}" href="{{ URL::route('dsms.student.create') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Student Admission')}}</span></a></li>
                    @endif
                </ul>
            </li>
            {{-- @permission('database-table-list') --}}
            @if( Route::has('dsms.database.index'))
            <li><a class="{{ ($_panel == 'DB Backup') ? 'active' : '' }}" href="{{ URL::route('dsms.database.index') }}" ><i class="fa fa-cloud-download"></i><span>{{__('DB Backup')}}</span></a></li>
            @endif
            {{-- @endpermission --}}
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
