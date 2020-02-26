<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserVideoTable extends Migration
{
    public function up()
    {
        Schema::create('myvideos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('u_id');
            $table->string('v_id');
            $table->integer('rating')->nullable();
            $table->boolean('is_saved')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->integer('rank')->nullable();
            $table->foreign('u_id')->references('id')
                ->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreign('v_id')->references('v_id')
                ->on('video')
                ->onUpdate('cascade')
                ->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('myvideos');
    }
}
