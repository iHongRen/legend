<div id="play-button" {% if bg_color %} style="background-color: {{ bg_color }}; border: solid 2px {{ bg_color }};"{% endif %}>
  <img id="play-img" src="/images/playback_play.png"></img>
</div>
<audio id="bgaudio" loop="loop" preload="none"> 
  <source src={{ theme.audio_src }} type="audio/mpeg">
</audio>

<script>
$(document).ready(function(){
  //播放按钮点击
  var audio = $("#bgaudio")[0];
  var img = $("#play-img")[0];
  $("#play-button").click(function(){ 
    if (audio.paused || audio.ended) {
      audio.play();
      img.src = "/images/playback_pause.png";
    } else {
      audio.pause();
      img.src = "/images/playback_play.png";
    }
  });
});
</script>