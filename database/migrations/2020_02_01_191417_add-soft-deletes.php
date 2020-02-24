<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSoftDeletes extends Migration
{

    public function up()
    {
        Schema::table('video', function (Blueprint $table) {
            $table->softDeletes();
        });
        Schema::table('myvideos', function (Blueprint $table) {
            $table->softDeletes();
        });
    }


    public function down()
    {
        Schema::table('video', function (Blueprint $table) {
            $table->dropColumn('deleted_at');
        });
        Schema::table('myvideos', function (Blueprint $table) {
            $table->dropColumn('deleted_at');
        });
    }
}
