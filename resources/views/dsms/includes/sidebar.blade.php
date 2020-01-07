<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            @if(Route::has('dsms.dashboard'))
            <li><a class="{{ ($_panel == 'Home') ? 'active' : '' }}" href="{{ URL::route('dsms.dashboard') }}"><i class="fa fa-dashboard"></i><span>{{__('Dashboard')}}</span></a></li>
            @endif

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Class' || $_panel == 'Section' || $_panel == 'Subject' || $_panel == 'Assign Subject' ) ? 'active' : '' }}">
                    <i class="fa fa-sitemap"></i>
                    <span>{{ __('Academics') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.class.index'))
                    <li><a class="{{ ($_panel == 'Class') ? 'active' : '' }}" href="{{ URL::route('dsms.class.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Classes')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.section.index'))
                    <li><a class="{{ ($_panel == 'Section') ? 'active' : '' }}" href="{{ URL::route('dsms.section.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Section')}}</span></a></li>
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
                <a href="javascript:;" class="{{ ($_panel == 'Exam' || $_panel == 'Exam Schedule' || $_panel == 'Grade') ? 'active' : '' }}">
                    <i class="fa fa-sitemap"></i>
                    <span>{{ __('Examination') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.exam.index'))
                    <li><a class="{{ ($_panel == 'Exam') ? 'active' : '' }}" href="{{ URL::route('dsms.exam.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Exam List')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.exam_schedule.index'))
                    <li><a class="{{ ($_panel == 'Exam Schedule') ? 'active' : '' }}" href="{{ URL::route('dsms.exam_schedule.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Exam Schedule')}}</span></a></li>
                    @endif
                    @if(Route::has('dsms.grade.index'))
                    <li><a class="{{ ($_panel == 'Grade') ? 'active' : '' }}" href="{{ URL::route('dsms.grade.index') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Marks Grade')}}</span></a></li>
                    @endif
                </ul>
            </li>

            <li class="sub-menu">
                <a href="javascript:;" class="{{ ($_panel == 'Student') ? 'active' : '' }}">
                    <i class="fa fa-sitemap"></i>
                    <span>{{ __('Student Information') }}</span>
                </a>
                <ul class="sub">
                    @if(Route::has('dsms.student.create'))
                    <li><a class="{{ ($_panel == 'Student Create') ? 'active' : '' }}" href="{{ URL::route('dsms.student.create') }}"><i class="fa fa-angle-double-right"></i><span>{{__('Student Admission')}}</span></a></li>
                    @endif
                </ul>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
