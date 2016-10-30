{% extends 'includes/layout.swig' %}   {#  模板继承 #}

{% block body %}
<div id="archive-outer">
  <div id="archive-inter">
      {% set y = 0; %}
      {% for postItem in page.posts.toArray() %} 
        <div classets="archive-item">
           {% if postItem.date === undefined %} {# 防止日期为空 #}
           {% set postItem.date = date(Date.now(), 'YYYY/MM/DD') %}
           {% endif %}
           {% set year = postItem.date.year(); %} 
           {% if (y != year) %}  {#  判断年分隔算法 #}
             {% set y = year %}
             <div id="archive-year"> {{ y }}年 </div>
           {% endif %}
           {% if !postItem.link %}
            {# 文章链接 #}
            <a href="{{ url_for(postItem.path) }}">
              <time id="archive-item-time" datetime="{{ date_xml(postItem.date) }}">
                {{ date(postItem.date, "MM-DD") }}
              </time>
              {{ postItem.title || '没有标题' }} 
            </a>
          {% endif %}
        </div>
      {% endfor %}
    </div>
</div>
{% endblock %}
