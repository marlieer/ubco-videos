@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'COSC 121 Video Resources')
@section('content')
    <script type="text/javascript" src="{{ URL::asset('js/buttons.js') }}"></script>
    <div>
        @foreach($searchList as $s)
            <div id="{{$s->search_q}}">
                <h2>{{ $s->search_q }}</h2>
                <a href="/videosbytopic/{{$s->search_q}}">View All</a>
                <a href="#" style="display: inline; margin-left: 2em;">Back to Top</a>
            </div>
            <table class="table table-hover videos-list-table">
                <tr class="videos-list-row">
                    @foreach($videos as $v)
                        @if($v->searchQ == $s->search_q)
                            <td>
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
                                <button id="like_{{$v->v_id}}" onclick="likeVideo('{{$v->v_id}}', '{{$id}}')" class="btn-like">Like</button>
                                <button id="dislike_{{$v->v_id}}" onclick="dislikeVideo('{{$v->v_id}}', '{{$id}}')" class="btn-dislike">Dislike</button>
                                <button id="save_{{$v->v_id}}" onclick="saveVideo('{{$v->v_id}}', '{{$id}}')" class="btn-save">Save</button>
                            </td>
                        @endif
                    @endforeach
                </tr>
            </table>
        @endforeach
    </div>
@endsection
