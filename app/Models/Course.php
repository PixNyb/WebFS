<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    const UPDATED_AT = 'last_updated_at';

    protected $table = 'courses';
    protected $primaryKey = 'id';

    public function standard_side_dish()
    {
        return $this->hasOne(SideDish::class);
    }
}
