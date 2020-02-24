<?php

namespace App\Http\Controllers;

use App\UserVideos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Video;


class UserVideosController extends Controller
{

    public function index()
    {
        if(Auth::check())
        {
            $videos = Video::join('myvideos','video.v_id','=','myvideos.v_id')
                ->where('myvideos.u_id', Auth::id())
                ->where('is_saved', true)
                ->select('video.title','video.views','video.likes',
                    'video.dislikes', 'video.v_id', 'video.url', 'myvideos.id', 'myvideos.u_id')
                ->get();
            foreach ($videos as $v){
                $v->addInfo();
            }
            return view('myvideos.index', compact('videos'));
        }
        else return(view('auth.login'));
    }


    public function store(Request $request)
    {
        $myvideo = UserVideos::firstOrCreate([
            'u_id'=>Auth::id(),
            'v_id'=> $request->v_id
        ]);

        if($request->save){
            $myvideo->saveVideo();
//            $request->session()->flash('success', "Saved");
        }
        if($request->like) {
            $myvideo->like();
//            $request->session()->flash('success', "Liked");
        }
        if($request->dislike) {
            $myvideo->dislike();
//            $request->session()->flash('success', "Disliked");
        }
        $myvideo->save();


        return redirect()->route('videos');
    }


    public function destroy($id, Request $request)
    {
        UserVideos::destroy($id);
        $request->session()->flash('success', "Video Removed from My Videos");
        return redirect(route('myvideos.index'));
    }
}
