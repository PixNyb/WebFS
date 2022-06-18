<?php

namespace App\Http\Controllers;

use App\Models\MenuItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MenuController extends Controller
{
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
        return MenuItem::all();
    }
}
