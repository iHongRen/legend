<div id="bottom-outer">
  {# 作者-日期-链接 #}
  <div id="bottom-inner">
    {{ config.author }} 
    ©{{ date(Date.now(), "YYYY") }} |Powered by  
    <a href="http://hexo.io" target="_blank">Hexo</a> with theme 
    <a href="https://github.com/iHongRen/legend" target="_blank">{{ config.theme }}</a>
  </div>
    
    {# 订阅Rss #}
    {% if (theme.rss) %}
      <a href="{{ url_for( theme.rss ) }}">
      {% if (theme.rss_icon) %}
      <img src={{ theme.rss_icon }} height="18" width="18">
      {% else %}
      rss
      </a>
    {% endif %}
</div>