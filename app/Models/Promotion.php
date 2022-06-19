<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Promotion extends Model
{
    protected $table = 'promotions';
    const UPDATED_AT = 'last_updated_at';
    protected $fillable = [
        'name',
        'description',
        'start_date',
        'end_date',
        'promotion_price',
        'end_date',
        'promotion_amount',
        'course_id',
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
