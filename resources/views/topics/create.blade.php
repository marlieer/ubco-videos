@extends('layouts.app')
@section('title', 'Video Resources')
@section('h1', 'Create Video Topic')
@section('content')
    <div class="container col-md-4 text-center">
        <form method="POST" action="/topics">
            {{ csrf_field() }}
            <label for="textarea">Enter Topics for Video Resources:</label>
            <textarea name="topics" id="textarea" rows="3" class="form-control" placeholder="Ex. Abstract Classes, Inheritance, Polymorphism"></textarea>
            <small class="form-text text-muted">Please separate entries with ", "</small>
            <button class="btn-block" type="submit">Submit</button>
        </form>
    </div>
@endsection
