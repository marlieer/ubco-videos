<?php

namespace App\Http\Controllers;

use App\Video;
use App\SearchList;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class VideoController extends Controller
{
    public function index()
    {
        if(Auth::check())
        {
            $id = Auth::id();
            $videos = Video::join('recommendations','video.v_id','recommendations.v_id')
                ->where('recommendations.u_id', $id)
                ->get()
                ->sortByDesc('rank');

            // if there are no recommendations, just retrieve videos
            if(sizeof($videos) == 0){
                $videos = Video::get()->sortByDesc('views');
            }

            foreach ($videos as $v)
                $v->addInfo();

            $searchList = SearchList::get()->sortBy('s_id');
            return view('videos.index', compact('videos','searchList','id'));
        }
        else return redirect(route('login'));
    }


    public function count(Request $request ) {
        $video = Video::find($request->v_id);
        $video->incrementViews();

        return $video->class_views;
    }


    public function indexbytopic($topic, $sortby='rank'){
        if (Auth::check())
        {
            $id = Auth::id();
            $videos = Video::join('recommendations','video.v_id','recommendations.v_id')
                ->where('searchQ', $topic)
                ->where('recommendations.u_id', $id)
                ->get()
                ->sortByDesc($sortby);

            foreach ($videos as $v){
                if ($v->rank == null)
                    $v->rank = 0;
                $v->addInfo();
            }

            return view('videos.indexbytopic', compact('videos', 'id', 'topic'));
        }
        else return redirect(route('login'));
    }


    public function manage()
    {
        if(Auth::check())
        {
            $videos = DB::table('video')->paginate(12);
            return view('videos.manage', compact('videos'));
        }
        else return redirect(route('login'));
    }


    public function manageDeleted()
    {
        if(Auth::check())
        {
            $videos = Video::onlyTrashed()->get();
            return view('videos.manageDeleted', compact('videos'));
        }
        else return redirect(route('login'));
    }


    public function restore(Request $request, $id)
    {
        if(Auth::check())
        {
            $video = Video::withTrashed()->find($id);
            $video->deleted_at = null;
            $video->save();
            $request->session()->flash('success','Restored video');
            return redirect(route('videos.manageDeleted'));
        }
        else return redirect(route('login'));
    }


    public function destroy(Request $request, $id)
    {
        $v = Video::find($id);
        $v->deleted_at = Carbon::now();
        $v->save();
        $request->session()->flash('success', "Video Deleted");
        return redirect(route('videos.manage'));
    }
}
