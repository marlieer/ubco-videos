<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{

    public function run()
    {
        DB::table('users')->insert([
            'name'=>'Admin',
            'email'=>'admin@admin.com',
            'password'=>Hash::make('adminadmin'),
        ]);
        DB::table('users')->insert([
            'name'=>'John Doe',
            'email'=>'john@doe.com',
            'password'=>Hash::make('johndoe'),
        ]);
        DB::table('users')->insert([
            'name'=>'Jane Doe',
            'email'=>'jane@doe.com',
            'password'=>Hash::make('janedoe'),
        ]);
        DB::table('users')->insert([
            'name'=>'Kenneth Jones',
            'email'=>'kenneth@jones.com',
            'password'=>Hash::make('kennethjones'),
        ]);
        DB::table('users')->insert([
            'name'=>'Clara Mahoney',
            'email'=>'clara@mahoney.com',
            'password'=>Hash::make('claramahoney'),
        ]);
        DB::table('users')->insert([
            'name'=>'Spongebob Squarepants',
            'email'=>'spongebob@squarepants.com',
            'password'=>Hash::make('spongebobsquarepants'),
        ]);
        DB::table('users')->insert([
            'name'=>'Batman',
            'email'=>'bat@man.com',
            'password'=>Hash::make('batman'),
        ]);
        DB::table('users')->insert([
            'name'=>'Michael Angelo',
            'email'=>'michael@angelo.com',
            'password'=>Hash::make('michaelangelo'),
        ]);
    }
}
