<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    protected $table = 'settings';
	protected $primaryKey = 'setting_id'; 
	protected $fillable = ['user_id'];
}
