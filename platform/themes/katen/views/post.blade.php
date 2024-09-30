@php
    use Botble\Theme\Facades\Theme;
    use Botble\Theme\Supports\ThemeSupport;

    $hasCover = !! $post->getMetaData('cover_image', true);

    Theme::layout(theme_option('blog_post_detail_layout', 'default'));
    Theme::set('pageTitle', $post->name);
    Theme::set('breadcrumbs', false);
    Theme::set('beforeContent', $hasCover ? Theme::partial('blog.post-cover-image', compact('post')) : null);
@endphp

@if (! $hasCover)
    {!! Theme::partial('blog.post-breadcrumbs', compact('post')) !!}
@endif

<div class="post post-single">
    @if(! $hasCover)
        {!! Theme::partial('blog.post-header',  compact('post')) !!}

        @if ($image = $post->image)
            <div class="featured-image">
                <a href="{{ $post->url }} title="{{ $post->name }}">
                    {{ RvMedia::image($image, $post->name) }}
                </a>
            </div>
        @endif

    @endif

    @if ($content = $post->content)
        <div class="post-content clearfix ck-content">
            {!! apply_filters('ads_render', null, 'post_before', ['class' => 'mb-2']) !!}
            {!! BaseHelper::clean($content) !!}
            {!! apply_filters('ads_render', null, 'post_after', ['class' => 'mt-2']) !!}
        </div>
    @endif

    <div class="post-bottom">
        <div class="row d-flex align-items-center">
            <div class="col-md-6 col-12 text-center text-md-start">
                @if($post->tags->isNotEmpty())
                    @foreach($post->tags as $tag)
                        <a href="{{ $tag->url }}" title="{{ $tag->name }}" class="tag" rel="tag">#{{ $tag->name }}</a>
                    @endforeach
                @endif
            </div>

            <div class="col-md-6 col-12">
                {!! Theme::partial('blog.post-sharing-buttons', ['socials' => ThemeSupport::getSocialSharingButtons($post->url, $post->name, RvMedia::getImageUrl($post->image)), 'wrapperClass' => 'mb-0 float-md-end']) !!}
            </div>
        </div>
    </div>
</div>

<div class="spacer" data-height="50"></div>

{!! Theme::partial('blog.post-author', compact('post')) !!}

{!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $post) !!}
