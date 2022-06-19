<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use App\Models\SideDish;
use App\Models\Table;
use Inertia\Inertia;

class OrderingController extends Controller
{
    public function index()
    {
        return Inertia::render('Ordering', [
            'tables' => Table::all(),
            'menu' => Menu::with('course')->get(),
            'side_dishes' => SideDish::all()
        ]);
    }
}
