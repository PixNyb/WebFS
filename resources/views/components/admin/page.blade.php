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
    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">
    <title>{{ ($page == '' ? '' : $page . ' - ') . $category }}</title>
</head>

<body>
{{ $slot }}
</body>

</html>
