{# 背景视频播放 #}
{% if theme.home_video.show %}
<video id="bgvideo" autoplay loop poster={{ theme.home_video.bgimage }}>
  <source src={{ theme.home_video.src }} type="video/mp4">
</video>
{% endif %}

{# 背景音频播放 #}
{% if theme.home_audio %}
  {% include 'includes/audio-play.swig' %}
{% endif %}

{% if theme.about_type == 'home_about' %}
{# 个人社交部分 #}
<div id="me-button">
		<img id="play-img" src="/images/me_n.png">
		</img>
</div>

<div id="social-div">
{% include 'includes/social.swig' %}
</div>

{# 关于我 #}
<div id="about-me">
  <div id="about-me-inner">
    <article class="markdown-body"></article>
  </div>
</div>
{% endif %}

<!--[if lt IE 9]>
<script>
	document.createElement('video');
</script>
<![endif]-->

{# =================script=================== #}
<script>

$(document).ready(function(){
  //判断是否该显示’关于我‘
  if( "{{ theme.about_type }}"  == 'home_about') {
    $("#about-me").hide(0);

    //加载about(关于)读取文件
    var s = $('article').html();
    if (s.length < 2) {
      var url = window.location.protocol+"//"+window.location.host+"/about/";
      $.ajax({ 
          type: "GET", 
          url: url, 
          dataType: "html", 
          success: function (data) { 
            $('article').html($(data).find('article').html());//解析about的html
            $("#about-me").css({"visibility": "visible"}).delay(100);
            $("#about-me").slideToggle('slow');
          }
      }); 
      }

    //个人按钮点击，隐藏和显示关于界面
    $("#me-button").click(function(){ 
      $("#social-div").slideToggle();
      $("#about-me").slideToggle();
    });
  }
});
</script>
{# =================script=================== #}
