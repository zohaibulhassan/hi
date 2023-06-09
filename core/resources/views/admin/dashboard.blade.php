@extends('admin.layouts.app')

@section('panel')
@if(@json_decode($general->sys_version)->version > systemDetails()['version'])
<div class="row">
    <div class="col-md-12">
        <div class="card text-white bg-warning mb-3">
            <div class="card-header">
                <h3 class="card-title"> @lang('New Version Available') <button
                        class="btn btn--dark float-right">@lang('Version')
                        {{json_decode($general->sys_version)->version}}</button> </h3>
            </div>
            <div class="card-body">
                <h5 class="card-title text-dark">@lang('What is the Update ?')</h5>
                <p>
                <pre class="f-size--24">{{json_decode($general->sys_version)->details}}</pre>
                </p>
            </div>
        </div>
    </div>
</div>
@endif
@if(@json_decode($general->sys_version)->message)
<div class="row">
    @foreach(json_decode($general->sys_version)->message as $msg)
    <div class="col-md-12">
        <div class="alert border border--primary" role="alert">
            <div class="alert__icon bg--primary"><i class="far fa-bell"></i></div>
            <p class="alert__message">@php echo $msg; @endphp</p>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
    </div>
    @endforeach
</div>
@endif

<div class="row">
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--primary b-radius--10 box-shadow">
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$widget['total_users']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Customers')</span>
                </div>
                <a href="{{route('admin.users.all')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--info b-radius--10 box-shadow">
            <div class="icon">
                <i class="las la-user-check"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$widget['verified_users']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Verified Customers')</span>
                </div>
                <a href="{{route('admin.users.active')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--warning b-radius--10 box-shadow ">
            <div class="icon">
                <i class="las la-user-minus"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$widget['email_unverified_users']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Email Unverified Customers')</span>
                </div>

                <a href="{{route('admin.users.email.unverified')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--danger b-radius--10 box-shadow ">
            <div class="icon">
                <i class="las la-comment-slash"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$widget['sms_unverified_users']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total SMS Unverified Customers')</span>
                </div>

                <a href="{{route('admin.users.sms.unverified')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->


</div>

<div class="row">
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--teal b-radius--10 box-shadow">
            <div class="icon">
                <i class="las la-list-ul"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$order['total_orders']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Orders')</span>
                </div>
                <a href="{{route('admin.orders.all')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--success b-radius--10 box-shadow">
            <div class="icon">
                <i class="las la-list-alt"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$order['completed_orders']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Completed Orders')</span>
                </div>
                <a href="{{route('admin.orders.delivered')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--orange b-radius--10 box-shadow ">
            <div class="icon">
                <i class="las la-times"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$order['inCompleted_orders']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Incompleted Orders')</span>
                </div>

                <a href="{{route('admin.orders.all')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--purple b-radius--10 box-shadow ">
            <div class="icon">
                <i class="lar la-thumbs-up"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{$total['subscriber']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Subscriber')</span>
                </div>

                <a href="{{route('admin.subscriber.index')}}"
                    class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
</div>

<div class="row mb-none-30 mt-5">
    <div class="col-xl-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Last 30 days Orders History')</h5>
                <div id="deposit-line"></div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Last 30 days Sales History')</h5>
                <div id="withdraw-line"></div>
            </div>
        </div>
    </div>
</div>

<div class="row mt-5">
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--1 b-radius--10 box-shadow">
            <div class="icon">
                <i class="las la-tshirt"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="amount">{{ $total['products']}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Products')</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--green b-radius--10 box-shadow">
            <div class="icon">
                <i class="las la-wallet"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="currency-sign">{{ $general->cur_sym }}</span>
                    <span class="amount">{{showAmount($order['total_sale_amount'])}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Sale Amount')</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--amber b-radius--10 box-shadow ">
            <div class="icon">
                <i class="las la-spinner"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="currency-sign">{{ $general->cur_sym }}</span>
                    <span class="amount">{{showAmount($order['pending_amount'])}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Pending Amount')</span>
                </div>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
        <div class="dashboard-w1 bg--red b-radius--10 box-shadow ">
            <div class="icon">
                <i class="lar la-calendar-times"></i>
            </div>
            <div class="details">
                <div class="numbers">
                    <span class="currency-sign">{{ $general->cur_sym }}</span>
                    <span class="amount">{{showAmount($order['cancel_amount'])}}</span>
                </div>
                <div class="desciption">
                    <span class="text--small">@lang('Total Cancel Amount')</span>
                </div>
            </div>
        </div>
    </div><!-- dashboard-w1 end -->
</div>

<div class="row mt-50 mb-none-30">
    <div class="col-xl-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Monthly Sales Report')</h5>
                <div id="apex-bar-chart"> </div>
            </div>
        </div>
    </div>
    <div class="col-xl-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Latest Orders')</h5>
                <div class="table-responsive--md  table-responsive">
                    <table class="table table--light style--two">
                        <thead>
                            <tr>
                                <th>@lang('Order NO')</th>
                                <th>@lang('Price')</th>
                                <th>@lang('Status')</th>
                                <th>@lang('Action')</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($latestOrders as $order)
                            <tr>
                                <td data-label="@lang('Order NO')">
                                    <span class="small">
                                        <a href="{{ route('admin.orders.detail', $order->id) }}">
                                            {{ $order->order_no}}
                                        </a>
                                    </span>
                                </td>
                                <td data-label="@lang('Price')">
                                    <strong>{{ showAmount($order->total) }} {{ $general->cur_text }}</strong>
                                </td>

                                <td data-label="@lang('Status')">
                                    @php
                                        echo $order->StatusText
                                    @endphp
                                </td>

                                <td data-label="@lang('Action')">
                                    <a href="{{ route('admin.orders.detail', $order->id) }}" class="icon-btn ml-1"
                                        data-toggle="tooltip" title="" data-original-title="@lang('Details')">
                                        <i class="las la-desktop text--shadow"></i>
                                    </a>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td class="text-muted text-center" colspan="100%">{{ __($emptyMessage) }}</td>
                            </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div><!-- row end -->

<div class="row mb-none-30 mt-5">
    <div class="col-xl-4 col-lg-6 mb-30">
        <div class="card overflow-hidden">
            <div class="card-body">
                <h5 class="card-title">@lang('Login By Browser')</h5>
                <canvas id="userBrowserChart"></canvas>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Login By OS')</h5>
                <canvas id="userOsChart"></canvas>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-6 mb-30">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">@lang('Login By Country')</h5>
                <canvas id="userCountryChart"></canvas>
            </div>
        </div>
    </div>
</div>
@endsection


@push('script')

<script src="{{asset('assets/admin/js/vendor/apexcharts.min.js')}}"></script>
<script src="{{asset('assets/admin/js/vendor/chart.js.2.8.0.js')}}"></script>

<script>
    "use strict";
        // apex-bar-chart js
        var options = {
            series: [{
                name: 'Total Deposit',
                data: [
                  @foreach($months as $month)
                    {{ getAmount(@$depositsMonth->where('months',$month)->first()->depositAmount) }},
                  @endforeach
                ]
            }],
            chart: {
                type: 'bar',
                height: 400,
                toolbar: {
                    show: false
                }
            },
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '50%',
                    endingShape: 'rounded'
                },
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                show: true,
                width: 2,
                colors: ['transparent']
            },
            xaxis: {
                categories: @json($months),
            },
            yaxis: {
                title: {
                    text: "{{__($general->cur_sym)}}",
                    style: {
                        color: '#7c97bb'
                    }
                }
            },
            grid: {
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: false
                    }
                },
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return "{{__($general->cur_sym)}}" + val + " "
                    }
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#apex-bar-chart"), options);
        chart.render();


        // apex-line chart
        var options = {
            chart: {
                height: 430,
                type: "area",
                toolbar: {
                    show: false
                },
                dropShadow: {
                    enabled: true,
                    enabledSeries: [0],
                    top: -2,
                    left: 0,
                    blur: 10,
                    opacity: 0.08
                },
                animations: {
                    enabled: true,
                    easing: 'linear',
                    dynamicAnimation: {
                        speed: 1000
                    }
                },
            },
            dataLabels: {
                enabled: false
            },
            series: [
                {
                    name: "Series 1",
                    data: @json($delivered['per_day_amount']->flatten())
                }
            ],
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    opacityFrom: 0.7,
                    opacityTo: 0.9,
                    stops: [0, 90, 100]
                }
            },
            xaxis: {
                categories: @json($delivered['per_day']->flatten())
            },
            grid: {
                padding: {
                    left: 5,
                    right: 5
                },
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: false
                    }
                },
            },
        };

        var chart = new ApexCharts(document.querySelector("#withdraw-line"), options);

        chart.render();




        // apex-line chart
        var options = {
            chart: {
                height: 430,
                type: "area",
                toolbar: {
                    show: false
                },
                dropShadow: {
                    enabled: true,
                    enabledSeries: [0],
                    top: -2,
                    left: 0,
                    blur: 10,
                    opacity: 0.08
                },
                animations: {
                    enabled: true,
                    easing: 'linear',
                    dynamicAnimation: {
                        speed: 1000
                    }
                },
            },
                colors: ['#00E396', '#0090FF'],
            dataLabels: {
                enabled: false
            },
            series: [
                {
                    name: "Series 1",
                    data: @json($orders['per_day_amount']->flatten())
                }
            ],
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    opacityFrom: 0.7,
                    opacityTo: 0.9,
                    stops: [0, 90, 100]
                }
            },
            xaxis: {
                categories: @json($orders['per_day']->flatten())
            },
            grid: {
                padding: {
                    left: 5,
                    right: 5
                },
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: false
                    }
                },
            },
        };

        var chart = new ApexCharts(document.querySelector("#deposit-line"), options);

        chart.render();


        var ctx = document.getElementById('userBrowserChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_browser_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_browser_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(231, 80, 90, 0.75)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                maintainAspectRatio: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            }
        });



        var ctx = document.getElementById('userOsChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_os_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_os_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(0, 0, 0, 0.05)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            },
        });


        // Donut chart
        var ctx = document.getElementById('userCountryChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_country_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_country_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(231, 80, 90, 0.75)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            }
        });
        
</script>
@endpush