<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Menu;
use App\Models\Promotion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class SaleController extends Controller
{
    public function index()
    {
        return Inertia::render('Sales/Index',
        [
            'courses' => Course::all(),
            'sales' => Promotion::with('course')->get(),
            'admin' => Auth::user()->isAdmin
        ]
        );
    }

    public function store(Request $request) {
        $resp = $request->validate([
            'course_id' => 'required',
            'price' => 'required',
            'sale_amount' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        $promotion = new Promotion();
        $promotion->course_id = $resp['course_id'];
        $promotion->promotion_price = $resp['price'];
        $promotion->promotion_amount = $resp['sale_amount'];
        $promotion->start_date = $resp['start_date'];
        $promotion->end_date = $resp['end_date'];
        $promotion->name = $resp['name'];
        $promotion->description = $resp['description'];
        $promotion->save();


        return response()->json(Promotion::with('course')->get());
    }

    public function update(Request $request)
    {
        $resp = $request->validate([
            'number' => 'required',
            'price' => 'required',
            'sale_amount' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        $promotion = Promotion::find($resp['number']);
        $promotion->course_id = $resp['course_id'];
        $promotion->promotion_price = $resp['price'];
        $promotion->promotion_amount = $resp['sale_amount'];
        $promotion->start_date = $resp['start_date'];
        $promotion->end_date = $resp['end_date'];
        $promotion->name = $resp['name'];
        $promotion->description = $resp['description'];
        $promotion->save();

        return response()->json(Promotion::with('course')->get());
    }

    public function destroyAPI($id)
    {

        $promotion = Promotion::find($id);
        $promotion->delete();

        return response()->json(Promotion::with('course')->get());
    }
}
