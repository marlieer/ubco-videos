<?php

namespace App\Http\Controllers;

use App\User;
use App\UserVideos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{

    public function index()
    {
        if(Auth::id()==1) {
            $users = DB::table('users')->orderBy('id')->paginate(10);
            return view('users.index', compact('users'));
        } else return redirect(route('videos'));
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy(Request $request, $id)
    {
        User::destroy($id);
        $request->session()->flash('success', "Deleted user from system");
        return redirect(route('users.index'));
    }
}
