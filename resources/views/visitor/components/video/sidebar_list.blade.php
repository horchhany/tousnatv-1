@if(!empty($video) && $video !== null)
<div class="grid_item">
    <div class="padding-xs uk-clearfix">
        <a  href="{{ route('visitor.video.detail', $video->id) }}" class="link-item">
            <div class="thumnail-outer">
                <img src="@if($video->featured_image){{ asset($video->featured_image) }}@else{{ asset('images/no_thumbnail_img.jpg') }}@endif" alt="{{ $video->title }}">
                <div class="caption">
                    <span class="video-length">
                        01:12:58
                    </span>
                </div>
            </div>
            <div class="text">
                <div>
                    <span class="title"></span>
                </div>
                <div>
                    <span class="meta">
                        @isset ($video->category->name)
                            {{ $video->category->name }}
                        @endisset
                    </span>
                </div>
            </div>
        </a>
    </div>
</div>
@endif
