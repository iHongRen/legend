{# 文章页面 #}
{% extends 'includes/layout.swig' %}

{# page页面(其实就是about)，也是用的这里来处理文章排版 #}
{% block body %}
  <article class="markdown-body">
    <h2 id="post-title">{{ page.title }}
      {% if is_post() && page.date %} {# 文章页面才显示日期 #}
        <div id="post-time" datetime="{{ date_xml(page.date) }}">
          {{ date(page.date, "YYYY-MM-DD") }}
        </div>
      {% endif %}
    </h2>
    {{ page.content }}
  </article>

  {% if is_post() %}
    
    {% if page.prev || page.next  %}
      <div id="page-prev-next">
        {# 上一篇文章 #}
        {% if (page.prev) %}
          <a id="page-prev-a" href="{{ url_for(page.prev.path) }}"> ← {{ page.prev.title }} </a>
        {% else %}
          <div></div> {# 仅用于占位 #}
        {% endif %}

        {# 下一篇文章 #}
        {% if (page.next) %}
          <a id="page-next-a" href="{{ url_for(page.next.path) }}"> {{ page.next.title }} → </a>
        {% endif %}
      </div>
    {% endif %}
    
    {# 背景音频播放 #}
    {% if theme.post_audio %}
      {% set bg_color =  theme.theme_color %}
      {% include 'includes/audio-play.swig' with bg_color %}
    {% endif %}

    {# 文章页面才加打赏功能 #}
    {% include 'includes/reward.swig' %}
  {% endif %}
{% endblock %}

