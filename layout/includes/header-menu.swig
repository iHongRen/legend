<div id="{{ menu_outer }}">
  <div id="menu-inner">
    {# 网站title #}
    {% if theme.title %}
    <div id="site-title">
      {{ theme.title }}
    </div>
    {% endif %}

     {# 主题菜单项 #}
    <div>
    {% for key in Object.keys(theme.menu) %}
      {% if theme.menu[key] %}
      <a href="{{ theme.menu[key] }}">{{ key }}</a>
      {% endif %}
    {% endfor %}
    </div>
  </div>
</div>