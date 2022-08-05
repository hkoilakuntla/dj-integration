<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SurveyPublish extends Model
{
    protected $table = 'survey_publish';
	protected $primaryKey = 'publish_id'; 
	protected $fillable = ['survey_id','created_by','published_to'];
}
