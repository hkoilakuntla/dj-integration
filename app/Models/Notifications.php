<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notifications extends Model
{
    protected $table = 'notifications';
	protected $primaryKey = 'notify_id'; 
	protected $fillable = ['mobile_number','created_by','survey_id'];
}
