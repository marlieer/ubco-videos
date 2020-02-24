<?php

namespace App;

use Cohensive\Embed\Facades\Embed;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Video extends Model
{
    use SoftDeletes;

    protected $table = 'video';
    protected $primaryKey = 'v_id';
    public $timestamps = false;
    public $incrementing = false;
    protected $keyType = 'string';

    public function comments()
    {
        return Comments::get()->where('video_id',$this->v_id);
    }

    public function searchQ($searchQ)
    {
        return $this->get()->where('searchQ', $searchQ);
    }
    public function addInfo()
    {
        $embed = Embed::make($this->url)->parseUrl();
        $embed->setAttribute(['width' => 300]);
        $this->embed = $embed->getHtml();

        $this->classLikes = UserVideos::where('v_id', $this->v_id)
            ->where('rating','=',1)
            ->get()
            ->count();
        $this->classDislikes = UserVideos::where('v_id', $this->v_id)
            ->where('rating','=',-1)
            ->get()
            ->count();
    }

    public function incrementViews()
    {
        $this->class_views += 1;
    }
}
