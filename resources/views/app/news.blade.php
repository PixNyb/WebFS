<x-app.page page="{{ __('page.news') }}" :nav="$navigation">
    @foreach ($newsItems as $article)
    <div class="text">
        <p><b>{{ $article->news_text }}</b></p>
        <p>{{ $article->last_updated_at->translatedFormat('D j F Y H:m:s') }}</p>
    </div>
    @endforeach
</x-app.page>