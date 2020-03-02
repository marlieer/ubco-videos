@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'COSC 121 Video Resources')
@section('content')
    <div class="container">

        <a href="{{route('videos')}}">Back</a>
        <p>Sort By:
            <input id="sort-by-recommended" type="radio" name="sortBy" value="recommended" checked="true"/>Recommended
            <input id="sort-by-views" href="/videosbytopic/{{$topic}}" type="radio" name="sortBy" value="views"/>YouTube Views

        </p>
        <h2 id="topic">{{ $topic }}</h2>
        <script type="text/javascript" src="{{ URL::asset('js/buttons.js') }}"></script>
        <section>
            @foreach($videos as $v)
                <div class="col-md-4 container">
                    <h4>{{ $v->title }}</h4>
                    <div class="media-body">
                        {!! $v->embed !!}
                    </div>
                    <p class="video-data">
                        <strong>YouTube</strong> Likes: {{ $v->likes }} | Dislikes: {{$v->dislikes }} |
                        Views: {{ $v->views }}
                    </p>
                    <p class="video-data">
                        <strong>Classmates</strong> Likes: {{ $v->classLikes }} |
                        Dislikes: {{ $v->classDislikes }}
                    </p>
                    <button class="like" user="{{$id}}" video="{{$v->v_id}}" id="like_{{$v->v_id}}" onclick="likeVideo('{{$v->v_id}}', '{{$id}}')">Like</button>
                    <button class="dislike" user="{{$id}}" video="{{$v->v_id}}" id="dislike_{{$v->v_id}}" onclick="dislikeVideo('{{$v->v_id}}', '{{$id}}')" >Dislike</button>
                    <button class="save" user="{{$id}}" video="{{$v->v_id}}" id="save_{{$v->v_id}}" onclick="saveVideo('{{$v->v_id}}', '{{$id}}')">Save</button>
                </div>
            @endforeach
        </section>
    </div>
@endsection