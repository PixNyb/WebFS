<?php

namespace App\Http\Controllers;

use App\Models\NewsArticle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    public function serve()
    {
        return view(
            'app.news',
            [
                'newsItems' => NewsArticle::orderBy('created_at', 'DESC')
                    ->take(10)
                    ->get(),
                'navigation' => DB::table('navigation')->get(['text', 'destination'])
            ]
        );
    }

    public function getAll()
    {
        return NewsArticle::orderBy('created_at', 'DESC')
            ->take(10)
            ->get();
    }
}
