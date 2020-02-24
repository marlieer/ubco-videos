@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'Manage Videos')
@section('content')
    <div>
        @foreach($videos as $v)
            <div class="container col-md-4 hover div-border">
                <h2><a href="{{$v->url}}">{{ $v->title }}</a></h2>
                <form method="POST" action="/videos/restore/{{ $v->v_id }}">
                    {{ csrf_field() }}
                    <button onclick="return confirm('Are you sure?')" type="submit">Restore Video</button>
                </form>
            </div>
        @endforeach
    </div>
@endsection
