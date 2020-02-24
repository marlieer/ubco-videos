<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $table = 'comments';
    protected $primaryKey = 'c_id';
    public $timestamps = false;

    protected $fillable = [
        'c_id','text','likes','author','video_id','published_at',
        'updated_at','sentiment','prob_pos','prob_neg','prob_neutral',
        'clean_text'
    ];

    public function video()
    {
        return Video::get()->where('v_id',$this->video_id);
    }
}
