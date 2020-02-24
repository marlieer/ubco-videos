@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'Manage Videos')
@section('content')
    <div>
        @foreach($videos as $v)
            <div class="container col-md-4">
                <h2><a href="{{$v->url}}">{{ $v->title }}</a></h2>
                <p>Likes: {{ $v->likes }} | Dislikes: {{ $v->dislikes }} | Views: {{$v->views}}</p>
                <form method="POST" action="/videos/{{ $v->v_id }}">
                    {{ method_field('DELETE') }}
                    {{ csrf_field() }}
                    <button onclick="return confirm('Are you sure?')" type="submit">Delete Video</button>
                </form>
            </div>
        @endforeach
    </div>

    <div class="row text-center">
        <div class="col-lg-12">
            <div class="container">
                {{ $videos->links() }}
            </div>
        </div>
    </div>
@endsection
