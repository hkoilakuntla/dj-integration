<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Survey extends Model
{
    protected $table = 'survey';
	protected $primaryKey = 'survey_id'; 
	protected $fillable = ['user_id','survey_name'];

	public function user(){
		return $this->belongsTo(User::class);
	}
	public function surveyPublish(){
		return $this->hasMany(SurveyPublish::class,'survey_id')->select('published_to');
	}
	public function surveyPublish_to(){
		return $this->belongsTo(SurveyPublish::class,'survey_id')->select('published_to');
	}
	public function surveyUsersQstOptions(){
		return $this->hasMany(SurveyUsersQstOptions::class,'survey_id');
	}
}
