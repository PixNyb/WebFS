<?php

namespace App\Http\Middleware;

use Carbon\Carbon;
use Closure;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class Language
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle($request, Closure $next)
    {
        if (Session()->has('locale') && in_array(Session()->get('locale'), config('app.locales'))) {
            App::setLocale(Session()->get('locale'), config('app.fallback_locale'));
            setlocale(LC_TIME, App::getLocale());
            Carbon::setLocale(App::getLocale());
        }
        return $next($request);
    }
}
