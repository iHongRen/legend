{# 社交部分，不是分享 #}
{% for key in Object.keys(theme.social) %}
    {% set item = theme.social[key] %}
    {% if item && item.url && item.icon %}
    <a class="social-a" href="{{ item.url }}" target="_blank">
        <img src="{{ item.icon }}">
    </a>
    {% endif %}
{% endfor %}
