<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SurveyUsersQstOptions extends Model
{
    protected $table = 'survey_users_qst_options';
	protected $primaryKey = 'qstoption_id'; 
	protected $fillable = ['surveyuser_id','qid','question_type','options_count'];
}
