<x-app.page page="{{ __('page.news') }}" :nav="$navigation">
    @foreach ($newsItems as $article)
    <div class="text">
        <p><b>{{ $article->news_text }}</b></p>
        <p>{{ Carbon::parse($article->last_updated_at)->locale(App::getLocale()) }}</p>
    </div>
    @endforeach
</x-app.page>