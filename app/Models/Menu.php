<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{

    protected $table = 'menu';

    protected $primaryKey = 'number';

    protected $keyType = 'string';

    const UPDATED_AT = 'last_updated_at';

    protected $fillable = [
        'number',
        'course_id',
        'standard_side_dish',
        'price',
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

}
