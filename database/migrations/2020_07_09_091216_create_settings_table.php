<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingsTable extends Migration
{
    
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->increments('setting_id');
            $table->integer('user_id');
            $table->integer('all')->default(1);
            $table->integer('mysurveys_responses')->default(0);
            $table->integer('new_surveys')->default(0);
            $table->integer('all_surveys')->default(0);
            $table->integer('all_responses')->default(0);
            $table->integer('off')->default(0);
            $table->integer('nearby_users')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
