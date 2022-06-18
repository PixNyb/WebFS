<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{

    protected $table = 'courses';

    const UPDATED_AT = 'last_updated_at';

    protected $fillable = [
        'name',
        'category_name',
        'addition',
        'active',
        'spice_scale'
    ];


}
