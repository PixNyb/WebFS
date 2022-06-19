<?php

namespace App\Http\Controllers;

use App\Models\Allergen;
use App\Models\Category;
use App\Models\Course;
use App\Models\CourseAllergen;
use App\Models\SpiceScale;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class CourseController
{

    public function index() {
        $courses = Course::paginate(50);
        return Inertia::render('Courses', [
            'courses' => $courses,
            'admin' => Auth::user()->isAdmin
        ]);
    }

    public function indexAPI() {
        $courses = Course::paginate(50);
        return response()->json($courses);
    }

    public function create() {
        $categories = Category::all();
        $spice_scale = SpiceScale::all();
        return Inertia::render('Courses/Create', [
            'categories' => $categories,
            'spice_scale' => $spice_scale,
            'admin' => Auth::user()->isAdmin,
            'allergens' => Allergen::all()
        ]);
    }

    public function store(Request $request) {
         $resp = $request->validate([
            'name' => 'required',
             'category_name' => 'required',
             'spice_scale' => 'required',
             'allergenList' => 'required',
        ]);
        $course = new Course();
        $course->name = $resp['name'];
        $course->category_name = $resp['category_name'];
        $course->spice_scale = $resp['spice_scale'];
        $course->save();

        foreach ($resp['allergenList'] as $allergen) {
            $courseAllergens = new CourseAllergen();
            $courseAllergens->course_id = $course->id;
            $courseAllergens->allergen = $allergen;
            $courseAllergens->save();
        }
        return Redirect::route('courses.index');
    }

    public function edit(Course $course) {
        $categories = Category::all();
        $spice_scale = SpiceScale::all();
        return Inertia::render('Courses/Edit', [
            'course' => $course,
            'categories' => $categories,
            'spice_scale' => $spice_scale,
            'admin' => Auth::user()->isAdmin
        ]);
    }

    public function update(Request $request, Course $course) {
        $data = $request->validate([
            'name' => 'required',
            'category_name' => 'required',
            'spice_scale' => 'required',
            'admin' => Auth::user()->isAdmin
        ]);
        $course->update($data);
        return Redirect::route('courses.index');
    }

    public function activity(Course $course) {
        if ($course->active) {
            $course->active = false;
        } else {
            $course->active = true;
        }
        $course->save();
        return Redirect::route('courses.index');
    }

    public function destroy(Course $course) {
        $course->delete();
        return Redirect::route('courses.index');
    }

}
