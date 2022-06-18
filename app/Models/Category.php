<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    protected $table = 'categories';

    const UPDATED_AT = null;
    const CREATED_AT = null;

    protected $primaryKey = 'name';
    protected $keyType = 'string';

    protected $fillable = [
        'name',
    ];


}
