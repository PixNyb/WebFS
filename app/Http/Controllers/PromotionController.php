<?php

namespace App\Http\Controllers;

use App\Models\Promotion;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PromotionController extends Controller
{
    public function serve()
    {
        return view(
            'app.sales',
            [
                'promotions' => Promotion::where(
                    [
                        ['start_date', '<=', now()],
                        ['end_date', '>', now()],
                    ]
                )
                    ->get()
                    ->sortBy(function ($promotion) {
                        return $promotion->course->name;
                    }),
                'navigation' => DB::table('navigation')->get(['text', 'destination'])
            ]
        );
    }
}
