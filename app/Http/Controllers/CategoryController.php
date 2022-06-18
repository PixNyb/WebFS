<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::paginate(10);
        return Inertia::render('Categories', [
            'categories' => $categories
        ]);
    }

    public function create()
    {
        return Inertia::render('Categories/Create');
    }

    public function store(Request $request)
    {
        $resp = $request->validate([
            'name' => 'required'
        ]);
        Category::create($resp);
        return Redirect::route('categories.index');
    }


    public function destroy(Category $category)
    {
        $category->delete();
        return Redirect::route('categories.index');
    }

}
