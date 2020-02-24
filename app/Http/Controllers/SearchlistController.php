<?php

namespace App\Http\Controllers;

use App\SearchList;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use function HighlightUtilities\splitCodeIntoArray;

class SearchlistController extends Controller
{

    public function index()
    {
        if(Auth::id() == 1)
        {
            $topics = SearchList::get()->sortBy('search_q');
            return view('topics.index', compact('topics'));
        }
        else return redirect(route('login'));
    }


    public function create()
    {
        if (Auth::id() == 1)
        {
            return view('topics.create');
        }
        else return redirect(route('login'));
    }


    public function store(Request $request)
    {
        if ($request->topic){
            SearchList::create(['search_q' => $request->topic]);
            $request->session()->flash('success',"Added $request->topic as a topic");
            return redirect(route('topics.index'));
        }
        else {
            $topics_array = explode(", ", $request->topics);
            foreach($topics_array as $topic){
                SearchList::create(['search_q'=>$topic]);
            }
            $request->session()->flash('success', "Added Topics");

            return redirect(route('topics.index'));
        }
    }


    public function edit(SearchList $searchList)
    {
        //
    }


    public function update(Request $request, SearchList $searchList)
    {
        //
    }

    public function destroy(Request $request, $id)
    {
        if(Auth::id() == 1)
        {
            SearchList::destroy($id);
            $request->session()->flash('success','Topic Deleted');
            return redirect(route('topics.index'));
        }
        else return redirect(route('login'));
    }
}
