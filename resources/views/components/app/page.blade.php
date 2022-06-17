<!-- Standard HTML5 page -->
@props([
"page" => '',
"category" => config('app.name')
])

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('css/normalise.css') }}">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <title>{{ ($page == '' ? '' : $page . ' - ') . $category }}</title>
</head>

<body>
    <header>
        <div>
            <span>
                <img src="{{ asset('images/dragon-small.png') }}" alt="" />
                <span>{{ __('header.name') }}</span>
                <img src="{{ asset('images/dragon-small-flipped.png') }}" alt="" />
            </span>
        </div>
        <div>
            <a href="#">
                <marquee behavior="scroll" direction="left">
                    {{ __('header.scroller') }}
                </marquee>
            </a>
        </div>
        <div>
            <span>
                <img src="{{ asset('images/dragon-small.png') }}" alt="" />
                <span>{{ __('header.name') }}</span>
                <img src="{{ asset('images/dragon-small-flipped.png') }}" alt="" />
            </span>
        </div>
    </header>
    <main>
        <div class="inner">
            <aside class="flex row">
                <img src="{{ asset('images/dragon-small.png') }}" alt="" />
                <div>
                    <h2>{{ __('header.slogan') }}</h2>
                    <h1>{{ __('header.name') }}</h1>
                    <nav>
                        <a href="#">Menukaart</a>
                        <a href="#">Nieuws</a>
                        <a href="#">Contact</a>
                    </nav>
                </div>
                <img src="{{ asset('images/dragon-small-flipped.png') }}" alt="" />
            </aside>
            <div class="content">
                {{ $slot }}
            </div>
            <aside class="footer">
                <a href="#">{{ __('footer.contact') }}</a>
            </aside>
        </div>
    </main>
</body>

</html>