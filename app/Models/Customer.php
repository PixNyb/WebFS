<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{

    protected $table = 'customer';
    protected $primaryKey = 'email';
    public $keyType = 'string';

    const UPDATED_AT = null;
    const CREATED_AT = null;
}
