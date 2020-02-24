@extends('layouts.app')
@section('title', 'Topics')
@section('h1', 'Topics')
@section('content')
    <div class="container col-md-4 col-xs-12">
        <div class="row padding">
            <label>Search</label>
            <input id="searchTopic" onkeyup="search()" class="form-control" type="text" placeholder="Search" aria-label="Search"/>
        </div>
        <div class="row">
            <form method="post" action="/topics">
                {{ csrf_field() }}
                <label>Add A Topic</label>
                <input type="text" name="topic" placeholder="Ex. Abstract Classes"/>
                <button type="submit">Add Topic</button>
            </form>
        </div>
    </div>
    <div class=" container col-md-8 col-xs-12">
        <table class="table table-responsive table-hover">
            <thead class="thead-light">
            <tr>
                <td>Delete Topic</td>
                <td><span onclick='sortTable("name")'>Topic Name</span></td>
            </tr>
            </thead>
            <tbody id="topics">
            @foreach($topics as $topic)
                <tr>
                    <td>
                        <form method="POST" action="/topics/{{ $topic->s_id }}">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button onclick="return confirm('Are you sure?')" class="btn" type="submit">Delete</button>
                        </form>
                    </td>
                    <td>{{$topic->search_q}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection



<script>
    function search() {
        // Declare variables
        let input, filter, tbody, tr, a, i, txtValue;
        input = document.getElementById("searchTopic");
        filter = input.value.toUpperCase();
        tbody = document.getElementById("topics");
        tr = tbody.getElementsByTagName('tr');

        // Loop through all list items, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            a = tr[i].getElementsByTagName("td")[1];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
</script>