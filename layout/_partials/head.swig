{% if theme.rss === '' and config.feed and config.feed.path %}
    {% set theme.rss = config.root + config.feed.path %}
{% endif %}

<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

<!-- d3 scripts -->
<script src="/vendors/jquery/index.js" charset="utf-8"></script>
<script src="/vendors/d3/d3.min.js" charset="utf-8"></script>
<script src="/vendors/d3/topojson.v1.min.js" charset="utf-8"></script>
<!-- end d3 scripts -->

{% if theme.google_site_verification %}
  <meta name="google-site-verification" content="{{ theme.google_site_verification }}" />
{% endif %}

{% if config.qihu_site_verification %}
  <meta name="360-site-verification" content="{{ config.qihu_site_verification }}" />
{% endif %}

{% if theme.fancybox %}
  <link rel="stylesheet" type="text/css" href="{{ url_for(theme.vendors) }}/fancybox/source/jquery.fancybox.css?v=2.1.5"/>
{% endif %}

{% if theme.unslider %}
    <link rel="stylesheet" type="text/css" href="{{ url_for(theme.vendors) }}/unslider/css/unslider.css"/>
    <link rel="stylesheet" type="text/css" href="{{ url_for(theme.vendors) }}/unslider/css/unslider-dots.css"/>
{% endif %}

<link rel="stylesheet" type="text/css" href="{{ url_for(theme.css) }}/main.css?v={{ theme.version }}"/>

{% if config.description %}
    <meta name="description" content="{{ config.description }}" />
{% endif %}

{% if page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
  <meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}

{% if theme.rss %}
  <link rel="alternate" href="{{ url_for(theme.rss) }}" title="{{ config.title }}" type="application/atom+xml" />
{% endif %}

{% if theme.favicon %}
  <link rel="shortcut icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{% endif %}

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-1180727794364095",
    enable_page_level_ads: true
  });
</script>

{% include '../_scripts/analytics/baidu-analytics.swig' %}
