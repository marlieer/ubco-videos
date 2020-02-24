<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recommendations extends Model
{
    use SoftDeletes;

    protected $table = 'recommendations';
    protected $primaryKey = 'id';
    public $timestamps = false;

    protected $fillable = ['v_id','u_id'];
}
