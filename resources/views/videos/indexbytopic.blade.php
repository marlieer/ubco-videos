@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'COSC 121 Video Resources')
@section('content')
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
                <button type="button" onclick="likeVideo('{{$v->v_id}}', '{{$id}}')" class="btn-like">Like</button>
                <button onclick="dislikeVideo('{{$v->v_id}}', '{{$id}}')" class="btn-dislike">Dislike
                </button>
                <button onclick="saveVideo('{{$v->v_id}}', '{{$id}}')" class="btn-save">Save</button>
            </div>
        @endforeach
    </section>
@endsection