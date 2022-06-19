<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{

    protected $table = 'payments';

    const UPDATED_AT = null;
    const CREATED_AT = null;

    protected $fillable = [
        'cardnumber,
        paymant_date'
    ];

}
