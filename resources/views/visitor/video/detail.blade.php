@extends('visitor.layouts.main')

@section('page_title', 'TOUSNATV | ' .$video->title)
@section('meta')
    <meta property="og:url"           content="{{ route('visitor.article.detail', $video->id) }}" />
    <meta property="og:type"          content="website" />
    <meta property="og:title"         content="{{$video->title}}" />
    <meta property="og:image"         content="{{asset($video->featured_image) }}" />
    <meta property="og:image:width" content="640" />
    <meta property="og:image:height" content="442" />
@endsection

@push('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('lib/jssocial/jssocials.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('lib/jssocial/jssocials-theme-flat.css') }}">
  <script src="{{asset('frontend/js/bootsrap.min.js')}}"></script>
    <script src="{{asset('frontend/js/custom.js')}}"></script>
    <script src="{{asset('frontend/js/ini.isotope.js')}}"></script>
    <script src="{{asset('frontend/js/isotope.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.colorbox.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.js')}}"></script>
    <script src="{{asset('frontend/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('frontend/js/smoothscroll.js')}}"></script>
    <script src="{{asset('frontend/js/waypoints.min.js')}}"></script>
@endpush

@section('content')

<!-- Top video slideshow -->
<div class="video-detail bg-dark-grey">
    <div class="container">
    <div class="row">
         <div class="col-sm-8">
                <div class="videos">
                    @if($video->video_url)
                        <iframe width="100%" height="410px" src="https://www.youtube.com/embed/{{$video->video_url}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    @endif

                </div>
                <!-- Video left description -->
                <div class="detail-left post-detail__entry">
                    <div class="top-share uk-margin-bottom uk-margin-top">
                       <div class="pull-right">
                            <div class="social-share">
                            </div>
                        </div>
                    </div>

                    <div class="section-bg__white video-detail__title uk-margin-bottom">
                        <div class="inner padding-small">
                            <h1 class="title">
                                {{ $video->title }}
                            </h1>
                        </div>
                    </div>

                    <div class="section-bg__white video-detail__desc uk-margin-bottom">
                            <article class="post-detail__article uk-float-left">
                                {!! $video->content !!}
                            </article>
                    </div>

                     <div class="facebookbackground">
                        <div class="col-md-12">
                            <div id="fb-root"></div>
                            <div class="textcontast">
                                <h4 class="font-kh-nokora" style="font-family: Koulen,Arial,Helvetica,sans-serif;">ភ្លាប់ទំនាក់ទំនងជាមួយ <span​ class="khmer">Tousna</span​><span class="loop">TV</span></h4>
                            </div>
                            <div class="fb-like" data-href="https://www.facebook.com/tousnatv/" data-layout="button" data-action="like" data-size="large" data-show-faces="false" data-share="false"></div>
                        </div>   
                    </div>

                    <div class="facebook-comment uk-float-left">
                        <h3 class="heading uk-margin-small-bottom">
                            <i class="fa fa-comments"></i>
                            <i class="fa fa-facebook-square"></i>
                            Comment</h3>
                        <div class="fb-comments" data-href="{{ route('visitor.video.detail', $video->id) }}" data-width="100%" data-numposts="5"></div>
                    </div>
                </div>

        </div>
        <div class="col-sm-4">
            <!-- Video sidebar -->
                <div class="video-detail__sidebar">
                    <div class="inner uk-margin-bottom uk-margin-top uk-clearfix">
                    @if(count($nextVideo) > 0)
                        <a href="{{ route('visitor.video.detail', $nextVideo->id) }}" class="section-bg__white next-video padding-small uk-float-left">
                            <div class="uk-flex uk-flex-inline">
                                <div class="thumbnail-outer">
                                    <img src="@if($nextVideo->featured_image){{ asset($nextVideo->featured_image) }}@else{{ asset('images/no_thumbnail_img.jpg') }}@endif" class="thumbnail-img" alt="{{ $nextVideo->title }}" />
                                </div>
                                <div class="text uk-flex-item-1">
                                    <li>
                                        <span class="next-text">Next</span>
                                        
                                    </li>
                                    <li>
                                        <span class="meta">
                                            {{ $nextVideo->category->name }}
                                        </span>
                                    </li>
                                </div>
                            </div>
                        </a>
                    @endif
                        <div class="related-video__outer uk-clearfix uk-float-left">
                            <div class="heading uk-float-left">
                                <h3 class="title">
                                    EPISODES
                                    <span class="total-episode">
                                    @if($serie->num_of_episode !==null & $serie->num_of_episode !== "")
                                        {{ $serie->num_of_episode }}
                                    @else
                                        unknown
                                    @endif
                                    </span>
                                </h3>
                            </div>
                            <div class="padding-xs uk-float-left section-bg__white related-video">
                                <div class="uk-grid uk-grid-collapse uk-grid-width-1-2">
                                @foreach($serie->posts as $video)
                                    @includeIf('visitor.components.video.sidebar_list', ['video' => $video])
                                @endforeach

                                @foreach($relatedVideos as $video)
                                    @includeIf('visitor.components.video.sidebar_list', ['video' => $video])
                                @endforeach
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /Video sidebar -->
        </div>
    </div>
</div>
</div>

<!-- /Top video slideshow -->

@endsection

@push('script_dependencies')
    <script src="{{ asset('lib/jssocial/jssocials.min.js') }}"></script>
@endpush

@section('script')
<script type="text/javascript">
    $(document).ready(function(){
        // social share configuration
        $(".social-share").jsSocials({
            shares: ["facebook", "twitter", "googleplus", "linkedin"]
        });
    });
</script>
@endsection
