<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SearchList extends Model
{
    protected $table = 'searchlist';
    protected $primaryKey = 's_id';
    public $timestamps = false;

    protected $fillable = [
        's_id','search_q'
    ];

    public function video()
    {
        return Video::get()->where('topics',$this->s_id);
    }

}
