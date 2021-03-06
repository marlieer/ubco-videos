@extends('layouts.app')
@section('title', 'My Videos')
@section('h1', 'My Videos')
@section('content')
    <script type="text/javascript" src="{{ URL::asset('js/buttons.js') }}"></script>
    <div class="container">
        <div class="row text-center text-lg-left">
            @foreach($videos as $v)
                <div class="media d-inline">
                    <h3>{{ $v->title }}</h3>
                    <div class="media-body">
                        {!! $v->embed !!}
                    </div>
                    <div class="media-heading">
                        <p class="video-data">
                            Likes: {{ $v->likes }} | Dislikes: {{$v->dislikes }} | Views: {{ $v->views }}
                        </p>
                        <p class="video-data">
                            <strong>Classmates</strong> Likes: {{ $v->classLikes }} |
                            Dislikes: {{ $v->classDislikes }}
                        </p>
                    </div>
                    <button class="like" user="{{$id}}" video="{{$v->v_id}}" id="like_{{$v->v_id}}" onclick="likeVideo('{{$v->v_id}}', '{{$id}}')">Like</button>
                    <button class="dislike" user="{{$id}}" video="{{$v->v_id}}" id="dislike_{{$v->v_id}}" onclick="dislikeVideo('{{$v->v_id}}', '{{$id}}')" >Dislike</button>
                    <form method="POST" action="/myvideos/{{ $v->id }}">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <button onclick="return confirm('Are you sure?')" type="submit">Remove</button>
                    </form>
                </div>
            @endforeach
        </div>
    </div>
    <script src="https://www.youtube.com/iframe_api"></script>
@endsection