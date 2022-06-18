<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    use HasFactory;

    const UPDATED_AT = 'last_updated_at';

    protected $table = 'menu';
    protected $primaryKey = 'number';

    public function course()
    {
        return $this->hasOne(Course::class);
    }
}
