<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SurveyQusetions extends Model
{
    protected $table = 'survey_questions';
	protected $primaryKey = 'question_id'; 
	protected $fillable = ['user_id','survey_id'];
}
