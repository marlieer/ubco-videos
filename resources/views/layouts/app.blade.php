<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title', 'Videos')</title>

    <!-- Styles -->
    @yield('styles')

    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/main.css') }}" rel="stylesheet">

    <!--Javascript -->
    <script type="text/javascript" src="{{ URL::asset('js/buttons.js') }}"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
</head>
<body>
<div id="app" class="fixed-top sticky-top">
    <nav class="navbar navbar-default fixed-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav navbar-left">
                    @if (Auth::id()==1)
                        <li><a class="nav-link" href="{{route('users.index')}}">Manage Users</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                Videos<span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li><a class="nav-link" href="{{route('videos')}}">Videos</a></li>
                                <li><a class="nav-link" href="{{route('videos.manage')}}">Manage Videos</a></li>
                                <li><a class="nav-link" href="{{route('videos.manageDeleted')}}">Manage Deleted Videos</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                Topics<span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li> <a href="{{ route('topics.index') }}">List All Topics</a></li>
                                <li><a href="{{ route('topics.create') }}">Add Topics</a></li>
                            </ul>
                        </li>
                    @endif
                        <li><a class="nav-link" href="{{route('myvideos.index')}}">My Videos</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                Videos By Topic<span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li> <a href="/#Generics">Generics</a></li>
                                <li><a href="/#Lists">Lists</a></li>
                                <li><a href="/#Stacks">Stacks</a></li>
                                <li><a href="/#Queue">Queues</a></li>
                                <li><a href="/#Merge Sort">Merge Sort</a></li>
                                <li><a href="/#Quick Sort">Quick Sort</a></li>
                                <li><a href="/#Radix Sort">Radix Sort</a></li>
                                <li><a href="/#Lambda Expressions">Lambda Expressions</a></li>
                            </ul>
                        </li>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        <li><a href="{{ route('login') }}">Login</a></li>
                        <li><a href="{{ route('register') }}">Register</a></li>
                    @else
                        <li>
                            <a href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                Logout
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                  style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </li>

                    @endif
                </ul>
            </div>
        </div>
    </nav>
</div>

<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>

<div class="container-fluid flash-message">
    @if( Session::has("success") )
        <div class="alert alert-success alert-block" role="alert">
            <button class="close" data-dismiss="alert"></button>
            {{ Session::get("success") }}
        </div>
    @endif

    @if( Session::has("error") )
        <div class="alert alert-danger alert-block" role="alert">
            <button class="close" data-dismiss="alert"></button>
            {{ Session::get("error") }}
        </div>
    @endif
    <br>
</div>
@yield('content')
</body>
</html>
