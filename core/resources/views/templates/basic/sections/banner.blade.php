@php
$sliders = getContent('banner.element',false,null,true);
@endphp
<!-- <section class="banner-section my-4">
    <div class="container-fluid">
        <div class="banner__wrapper">
            <div class="banner__wrapper-category d-none d-lg-block">
                <div class="banner__wrapper-category-inner">
                    <h6 class="banner__wrapper-category-inner-header">@lang('Categories')</h6>
                    @include($activeTemplate.'partials.navbar')
                </div>
            </div>
            <div class="banner__wrapper-content">
                <div class="banner-slider owl-theme owl-carousel">
                    @foreach ($sliders as $slider)
                    <div class="banner__wrapper-content-inner">
                        <a href="{{ __($slider->data_values->url) }}">
                            <img src="{{ getImage('assets/images/frontend/banner/'.$slider->data_values->image,'1292x474') }}" alt="banner">
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
            @if ($todayDealProducts->count() > 0)             
            <div class="banner__wrapper-products">
                <div class="banner__wrapper-products-inner">
                    <h6 class="banner__wrapper-products-inner-header">@lang('Today\'s Deal')</h6>
                    <div class="banner__wrapper-products-inner-body">
                        <div class="product-max-xl-slider">
                            @foreach ($todayDealProducts as $product)
                            @php
                                $price = productPrice($product);
                            @endphp                           
                            <a href="{{ route('product.detail',['id'=>$product->id,'name'=>slug($product->slug)]) }}" class="deal__item">
                                <div class="deal__item-img">
                                    <img src="{{ getImage(imagePath()['product']['thumb']['path'].'/'. $product->image,imagePath()['product']['thumb']['size']) }}" alt="banner/products">
                                </div>
                                <div class="deal__item-cont">
                                    <h6 class="price text--base">{{ $general->cur_sym }}{{ showAmount($price) }}</h6>
                                    <del class="old-price">{{ $general->cur_sym }}{{ showAmount($product->price) }}</del>
                                </div>
                            </a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
            @endif
        </div>
    </div>
</section> -->
<!-- <div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-xxl-6 col-xl-6">
                <h1>Living The <span>Dream, </span>Driving The <span>Dream</span>.</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam quod, excepturi aliquam debitis eos unde porro illo voluptatibus odio in consectetur possimus sapiente deserunt dolor itaque veritatis mollitia! Reprehenderit, veritatis?</p>
                <a href="#">Browse Showroom</a>
            </div>
        </div>
    </div>
</div> -->
<div class="owl-carousel owl-theme" id="banner">
    <div class="item">
        <div class="img-box">
            <img src="{{ asset('assets/images/banner-2.png') }}" alt="">
        </div>
        <div class="text-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3"></div>
                    <div class="col-xxl-6 col-xl-6">
                        <h1>Living The <span>Dream, </span>Driving The <span>Dream</span>.</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam quod, excepturi aliquam debitis eos unde porro illo voluptatibus odio in consectetur possimus sapiente deserunt dolor itaque veritatis mollitia! Reprehenderit, veritatis?</p>
                        <a href="#">Browse Showroom</a>
                    </div>
                    <div class="col-xl-3"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="item">
        <div class="img-box">
            <img src="{{ asset('assets/images/banner-3.png') }}" alt="">
        </div>
        <div class="text-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3"></div>
                    <div class="col-xxl-6 col-xl-6">
                        <h1>Living The <span>Dream, </span>Driving The <span>Dream</span>.</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam quod, excepturi aliquam debitis eos unde porro illo voluptatibus odio in consectetur possimus sapiente deserunt dolor itaque veritatis mollitia! Reprehenderit, veritatis?</p>
                        <a href="#">Browse Showroom</a>
                    </div>
                    <div class="col-xl-3"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="item">
        <div class="img-box">
            <img src="{{ asset('assets/images/banner-4.png') }}" alt="">
        </div>
        <div class="text-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3"></div>
                    <div class="col-xxl-6 col-xl-6">
                        <h1>Living The <span>Dream, </span>Driving The <span>Dream</span>.</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam quod, excepturi aliquam debitis eos unde porro illo voluptatibus odio in consectetur possimus sapiente deserunt dolor itaque veritatis mollitia! Reprehenderit, veritatis?</p>
                        <a href="#">Browse Showroom</a>
                    </div>
                    <div class="col-xl-3"></div>
                </div>
            </div>
        </div>
    </div>
</div>