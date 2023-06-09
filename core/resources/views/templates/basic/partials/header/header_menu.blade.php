<div class="header-menu bg--base">
    <div class="container">
        <div class="menu-area">
            <div class="menu-close">
                <i class="las la-times"></i>
            </div>
            <form action="{{ route('products') }}" method="GET" class="search-form d-lg-none mb-4">
                <div class="input-group search--group">
                    <input type="text" class="form-control" name="search" placeholder="@lang('Search here')" value="{{ request()->search ?? null }}">
                    <button class="cmn--btn" type="submit">@lang('Search') </button>
                </div>
            </form>
            <div class="category-link-area  @if (request()->routeIs('home')) d-lg-none @endif">
                <button type="submit" class="cmn--btn categoryButton">@lang('All Categories') <i class="las la-angle-down ms-2 fs--14px"></i></button>
                <button type="submit" class="cmn--btn menuButton active">@lang('Menu')</button>

                @include($activeTemplate.'partials.navbar')

            </div>

            
            <div class="sign-in-up d-none d-md-block font-heading change-language2">
                <span class="text-white"><i class="las la-user"></i></span>
                @auth
                <a class="text-white" href="{{ route('user.home') }}">{{ __(auth()->user()->username) }}</a>
                @else
                <a class="text-white" href="{{ route('user.login') }}">@lang('Login')</a>
                <a class="text-white" href="{{ route('user.register') }}">@lang('Register')</a>
                @endauth
            </div>
            <div class="change-language d-md-none mt-4 fs--16px">
                <div class="sign-in-up">
                    <span><i class="fas la-user"></i></span>
                    @auth
                    <a href="{{ route('user.home') }}">{{ __(auth()->user()->username) }}</a>
                    @else
                    <a href="{{ route('user.login') }}">@lang('Login')</a>
                    <a href="{{ route('user.register') }}">@lang('Register')</a>
                    @endauth
                </div>
            </div>
        </div>
    </div>
</div>