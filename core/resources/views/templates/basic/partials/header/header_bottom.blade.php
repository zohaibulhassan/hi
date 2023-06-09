<div class="header-bottom bg--section py-2">
    <div class="container">
        <div class="row">
            <div class="col-xxl-3 col-xl-3 p-rel">
                <div class="logo">
                    <a href="{{ route('home') }}">
                        <img src="{{ asset('assets/images/logo.png') }}" alt="@lang('logo')">
                        <!-- <h1>Cardiff Motors</h1> -->
                    </a>
                </div>
            </div>
            <div class="col-xxl-6 col-xl-6">
                <ul class="menu  @if (request()->routeIs('home')) me-lg-auto @endif">
                    <li>
                        <a href="{{ route('home') }}" class="{{ menuActive('home') }}">
                            @lang('Home')
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('products') }}" class="{{ menuActive('products') }}">
                            Stock
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('contact') }}" class="{{ menuActive('contact') }}">
                            Sell
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('track-order') }}" class="{{ menuActive('track-order') }}">
                            Finance
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('track-order') }}" class="{{ menuActive('track-order') }}">
                            Reviews
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-xxl-3 col-xl-3">
                <form action="{{ route('products') }}" method="GET" class="search-form d-none d-lg-block">
                    <div class="input-group search--group">
                        <button class="cmn--btn" type="submit"><i class="fas fa-search"></i></button>
                        <input type="text" class="form-control" name="search" placeholder="@lang('Search here')" value="{{ request()->search ?? null }}">                        
                    </div>
                </form>
            </div>
            <!-- <div class="cart-wrapper d-flex flex-wrap  me-4 me-lg-0">
                <a href="{{ route('wishlist') }}" class="cart--btn">
                    <i class="far fa-heart"></i>
                    <span class="qty show-wishlist-count">0</span>
                </a>
                <a href="{{ route('cart') }}" class="cart--btn">
                    <i class="fas fa-cart-arrow-down"></i>
                    <span class="qty show-cart-count">0</span>
                </a>
            </div>
            <div class="header-bar d-lg-none">
                <span></span>
                <span></span>
                <span></span>
            </div> -->
        </div>
    </div>
</div>