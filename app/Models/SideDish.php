<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SideDish extends Model
{
    use HasFactory;

    const UPDATED_AT = 'last_updated_at';

    protected $table = 'side_dishes';
    protected $primaryKey = 'name';
}
