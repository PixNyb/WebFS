<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseAllergen extends Model
{
    protected $table = 'course_allergens';
    public $timestamps = false;

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
