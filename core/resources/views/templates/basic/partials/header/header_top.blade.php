
@php
$headerContent = getContent('contact_us.content',true);
@endphp
<div class="header-top">
    <div class="container">
        <div class="row">
            <div class="col-xxl-4 col-xl-4"></div>
            <div class="col-xxl-4 col-xl-4">
                <ul>                
                    <li>
                        <span class="name text--white">Book Online Now Call</span>
                        <a href="tel:{{ __(@$headerContent->data_values->contact_number) }}">{{ __(@$headerContent->data_values->contact_number) }}</a>
                    </li>
                </ul>
            </div>
            <!-- <div class="change-language">
                <select class="language langSel">
                    @foreach ($language as $item)
                    <option value="{{ $item->code }}" @if (session('lang')==$item->code) selected @endif>
                        {{ __($item->name) }}
                    </option>
                    @endforeach
                </select>
            </div> -->
        </div>
    </div>
</div>