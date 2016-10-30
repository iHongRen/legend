{# 多说评论脚本，多说官方提供， 只需要修改short_name #}
<script type="text/javascript">
var duoshuoQuery = {short_name:"{{ theme.duoshuo_shortname }}"};
(function() {
  var ds = document.createElement('script');
  ds.type = 'text/javascript';ds.async = true;
  ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
  ds.charset = 'UTF-8';
  (document.getElementsByTagName('head')[0] 
   || document.getElementsByTagName('body')[0]).appendChild(ds);
})();
</script>