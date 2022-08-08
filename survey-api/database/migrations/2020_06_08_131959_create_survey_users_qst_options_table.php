<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSurveyUsersQstOptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('survey_users_qst_options', function (Blueprint $table) {
            $table->increments('qstoption_id');
            $table->integer('surveyuser_id');
            $table->integer('survey_id');
            $table->string('mobile');            
            $table->integer('question_id');
            $table->string('qstn_type');
            $table->string('opt_txt');
            $table->string('selected_options');
            $table->integer('options_count');
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
        Schema::dropIfExists('survey_users_qst_options');
    }
}
