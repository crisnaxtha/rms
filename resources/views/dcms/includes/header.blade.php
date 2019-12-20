<header class="header white-bg">
        <div class="sidebar-toggle-box">
            <i class="fa fa-bars"></i>
        </div>
      <!--logo start-->
      <a href="{{ URL::route('dcms.dashboard')}}" class="logo">DCM<span>S</span></a>
      <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->
            <ul class="nav top-menu">
                <!-- settings start -->


                <!-- inbox dropdown end -->

                <li class="">
                    @include('dcms.includes.breadcrumb')
                </li>
            </ul>
        </div>

      <div class="top-nav ">
          <!--search & user info start-->
          <ul class="nav pull-right top-menu">


              <!-- user login dropdown start-->
              <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                      @if(Auth::user()->avatar)
                      <img alt="" src="{{ asset(Auth::user()->avatar) }}" height="29" width="29">
                      @else
                      <img alt="" src="{{ asset('assets/dcms/img/lochan.png') }}" height="29" width="29">
                      @endif
                      <span class="username">{{ Auth::user()->name }}</span>
                      <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu extended logout">
                      <div class="log-arrow-up"></div>
                      @if(route::has('dcms.user_profile.show'))
                      <li><a href="{{ route('dcms.user_profile.show') }}"><i class=" fa fa-user"></i>Profile</a></li>
                      @endif
                      {{-- <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li> --}}
                      {{-- <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li> --}}
                      <li><a href="{{ route('logout') }}"><i class="fa fa-key"></i> Log Out</a></li>
                  </ul>
              </li>
              <!-- user login dropdown end -->
          </ul>
          <!--search & user info end-->
      </div>
  </header>
