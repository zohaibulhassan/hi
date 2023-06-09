@extends($activeTemplate.'layouts.frontend')
@section('content')

@include($activeTemplate.'sections.banner')
@include($activeTemplate.'partials.filters')
@include($activeTemplate.'partials.about')
@include($activeTemplate.'partials.services')
@include($activeTemplate.'partials.count')
@include($activeTemplate.'partials.reviews')
<!-- @if($sections->secs != null)
    @foreach(json_decode($sections->secs) as $sec)
        @include($activeTemplate.'sections.'.$sec)
    @endforeach
@endif -->

    <!-- @include($activeTemplate.'partials.hot_deal')

    @include($activeTemplate.'partials.featured_product')

    @include($activeTemplate.'partials.best_selling')

    @include($activeTemplate.'partials.category_brands') -->

@endsection
