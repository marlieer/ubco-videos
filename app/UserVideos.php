<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserVideos extends Model
{
    protected $table = 'myvideos';
    protected $primaryKey = 'id';
    public $timestamps = false;

    protected $fillable = ['v_id','u_id', 'rating', 'is_saved'];

    public function user()
    {
        return User::get()->where('video_id',$this->v_id);
    }

    public function video()
    {
        return Video::get()->where('v_id',$this->v_id);
    }

    public function like()
    {
        $this->rating = 1;
    }

    public function dislike()
    {
        $this->rating = -1;
    }

    public function saveVideo()
    {
        $this->is_saved = true;
    }

    public function remove()
    {
        $this->is_saved = false;
    }
}
