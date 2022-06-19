<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SideDish extends Model
{

    protected $table = 'side_dishes';

    protected $primaryKey = 'name';

    protected $keyType = 'string';

    const UPDATED_AT = 'last_updated_at';

    protected $fillable = [
        'name',
        'price_addition',
    ];
}
