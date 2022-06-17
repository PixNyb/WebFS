<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class LanguageController extends Controller
{
    public function SwitchLanguage($locale)
    {
        if (in_array($locale, config('app.locales')))
            Session::put('locale', $locale);

        return Redirect::back();
    }
}
