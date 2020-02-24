@extends('layouts.app')
@section('title', 'Users')
@section('h1', 'Users')
@section('content')
    <div class="container col-md-4">
        <label>Search</label>
        <input id="searchUser" onkeyup="search()" class="form-control" type="text" placeholder="Search" aria-label="Search"/>
    </div>
    <div class="container col-md-8">
        <table class="table table-responsive table-hover">
            <thead class="thead-light">
                <tr>
                    <td>Delete User</td>
                    <td><span onclick='sortTable("id")'>User ID</span></td>
                    <td><span onclick='sortTable("name")'>Name</span></td>
                    <td><span onclick='sortTable("email")'>Email</span></td>
                </tr>
            </thead>
            <tbody id="users">
            @foreach($users as $user)
                <tr>
                    <td>
                        <form method="POST" action="/users/{{ $user->id }}">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button onclick="return confirm('Are you sure?')" class="btn" type="submit">Delete</button>
                        </form>
                    </td>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="text-center col-12">
            {{ $users->links() }}
        </div>

    </div>

@endsection



<script>
    function search() {
        // Declare variables
        let input, filter, tbody, tr, a, i, txtValue;
        input = document.getElementById("searchUser");
        filter = input.value.toUpperCase();
        tbody = document.getElementById("users");
        tr = tbody.getElementsByTagName('tr');

        // Loop through all list items, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            a = tr[i].getElementsByTagName("td")[2];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
</script>