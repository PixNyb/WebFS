<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Menu;
use App\Models\MenuItem;
use App\Models\SideDish;
use App\Models\SpiceScale;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class MenuController extends Controller
{

    public function index() {
        $menu = Menu::with('course')->orderBy('number')->get();
        $active_courses = Course::where('active', 1)->get();
        $spice_scale = SpiceScale::all();
        $side_dishes = SideDish::all();
        return Inertia::render('Menu/Index', [
            'courses' => $active_courses,
            'menu' => $menu,
            'spice_scale' => $spice_scale,
            'side_dishes' => $side_dishes
        ]);
    }

    public function store(Request $request) {
        $resp = $request->validate([
            'course_id' => 'required',
            'price' => 'required',
            'standard_side_dish' => 'max:255',
        ]);

        # Find the next available key excluding the keys that are not of type integer and converted to integer
        $keys = DB::table('menu')->where('number', 'REGEXP', '^[0-9]+$')->get()->toArray();
        # convert the array of objects to an array of integers
        $keys = array_map(function($key) {
            return (int) $key->number;
        }, $keys);
        # loop through the array and find the first value that is not in the array
        $next_key = 1;
        while (in_array($next_key, $keys)) {
            $next_key++;
        }
        $menu = new Menu();
        $menu->number = $next_key;
        $menu->course_id = $resp['course_id'];
        if (isset($resp['standard_side_dish'])) {
            $menu->standard_side_dish = $resp['standard_side_dish'];
        }
        $menu->price = $resp['price'];
        $menu->save();
        return response()->json(Menu::with('course')->orderBy('number')->get());
    }

    public function update(Request $request) {
        $resp = $request->validate([
            'number' => 'required',
            'price' => 'required',
            'standard_side_dish' => 'max:255',
        ]);
        $menu = Menu::find($resp['number']);
        $menu->price = $resp['price'];
        if (isset($resp['standard_side_dish'])) {
            $menu->standard_side_dish = $resp['standard_side_dish'];
        }else {
            $menu->standard_side_dish = null;
        }
        $menu->save();
        return response()->json(Menu::with('course')->orderBy('number')->get());
    }

    public function destroy(Menu $menu) {
        $menu->delete();
        return Redirect::route('menu.index');
    }

    public function destroyAPI($id) {
        $menu = Menu::find($id);
        $menu?->delete();
        $menuList = Menu::with('course')->orderBy('number')->get();
        return response()->json($menuList);
    }

    public function serve()
    {
        return view(
            'app.menu',
            [
                'menuItems' => $this->getAll(),
                'navigation' => DB::table('navigation')->get(['text', 'destination'])
            ]
        );
    }

    public function getAll()
    {
        // return MenuItem::all();
        return [];
    }
}
