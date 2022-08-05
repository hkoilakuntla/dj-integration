<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SurveyUsers extends Model
{
    protected $table = 'survey_users';
	protected $primaryKey = 'surveyuser_id'; 
	protected $fillable = ['user_id','survey_id'];
}
