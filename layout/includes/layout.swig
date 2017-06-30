{% set menu_outer = "menu-outer-x" %}
{% set body_id = "body-x" %}
{% if is_home() %}
{% set body_id = "body-home-bg" %}
{% set menu_outer = "menu-outer-home" %}
{% endif %}

{% if is_archive() %}
{% set body_id = "body-archive-bg" %}
{% endif %}

<!doctype html>
<html lang="{{ config.language }}">

<script src="//cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" 
src="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.js">
</script>
<link href=  "{{ theme.code_theme }}" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/plugins/github-markdown.css">

<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width,initial-scale=1">
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
</head>

<body id="{{ body_id }}">
<div id="layout-content">
  {% include 'header-menu.swig' %} 
  <div id="content-outer">
    <div id="content-inner">
      {# {% autoescape false %}{{ body }}{% endautoescape %} #}
      {% block body %}    
      {% endblock %}
    </div>
  </div>
</div>
{# 来必力评论脚本 #}
{% if page.comments && theme.livere_uid %}
  {% include 'livere.swig' %}
{% endif %}

{% include 'footer.swig' %} 

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

</body>
</html>

{# 代码高亮脚本 #}
<script>
$(window).on('load', function(){
   $('pre').addClass('prettyprint').attr('style', 'overflow:auto;');
   prettyPrint();
 });
</script>

