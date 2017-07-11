# legend  
基于 [Hexo](https://hexo.io/) 的主题，手机端预览效果，

![](/screenshots/qr.png)

Web端猛戳 [https://ihongren.github.io](https://ihongren.github.io/)

![](/screenshots/bg.png)

# Version: 1.1

# 使用：

0. 首先在使用此主题之前，假设你已经了解 [Hexo](https://hexo.io/) 和它的主题。

1. 直接下载本主题，将 **legend** 文件夹放到 **Hexo** 的 **themes** 目录下，或者直接克隆到该目录下:

   ```sh
   $ git clone https://github.com/iHongRen/legend themes/legend
   ```

2. 修改 **Hexo** 的 **_config.yml** 配置文件，将主题名字改为 **legend** 。*(别忘了保存)*

   ```yaml
   theme: legend
   ```

3. 打开命令行工具，切换到 **Hexo** 目录，执行：

   ```shell
    $ hexo s
   ```

   如果成功你将会看到下面一段话：

   *INFO  Hexo is running at [http://localhost:4000/](http://localhost:4000/) Press Ctrl+C to stop.* *       

4. 在浏览器里输入 [http://localhost:4000/](http://localhost:4000/)，回车即可看到运行效果。

---

### 主题配置：

1. **Hexo** 的主配置文件 **_config.yml**，你可能需要修改以下参数：*(别忘了保存)*

   ```yaml
   # Site
   title: 三省吾身
   author: i红人

   # URL
   url: https://ihongren.github.io

   # Writing
   highlight:
     enable: false
     
   ## Set per_page to 0 to disable pagination
   per_page: 0

   ## Themes: https://hexo.io/themes/
   theme: legend
   ```

2. **legend** 主题的配置文件 **_config.yml** ，*(别忘了保存)*

   - 以下是必须修改的字段：

   ```yaml
   # comment 来必力data-uid
   livere_uid: xxxxxxxxxx

   # donate 打赏
   wechatpay: /images/wechatpay.png
   alipay:  /images/alipay.png
   reward_comment: 文章对我有帮助，打赏作者

   # 个人社交主页 (可选择填写部分）
   social:
     微博:
       url: http://weibo.com/3169700852/
       icon: /images/weibo.png
     知乎: 
       url: https://www.zhihu.com/people/hong-ren-84
       icon: /images/zhihu.png
     Github: 
       url: https://github.com/iHongRen
       icon: /images/github.png
     LinkedIn:
       url: https://www.linkedin.com
       icon: /images/linkedin.png
     Fackbook: 
       url: https://facebook.com
       icon: /images/facebook.png
     Twitter:
       url: https://twitter.com/ihongren
       icon: /images/twitter.png
   ```

   - 下面参数是可选修改的(根据自己喜好)：

   ```yaml
   ##可选修改部分############################################################
   # RSS订阅
   plugin:
   - hexo-generator-feed
   subnav:
   rss: /atom.xml
   rss_icon: /images/rss.png

   # Feed Atom
   feed:
   type: atom
   path: atom

   # 主题主颜色
   theme_color: '#6d5aca'  #尝试替换自己喜欢的颜色 '#2ca6cb'... #
   theme_highlight_color: '#4400B3' # '#00bfff'... #

   # 代码主题 目前添加了两种: tomorrow.css | tomorrow-night.css  
   # 想要尝试更多请移步: https://jmblog.github.io/color-themes-for-google-code-prettify/ #
   code_theme: /plugins/code-theme/tomorrow.css

   # 主题的主字体 (header,footer...部分)
   theme_font_family: Microsoft Yahei

   # 首页背景视频 show表示是否要显示#
   home_video: 
     src: "http://cdn.calm.com/scenes/scene-Qqkzy9k7Eo.mp4?v=1418162238190"
     show: true
     bgimage: /images/background.png

   # 背景音频源 #
   audio_src: "http://cdn.calm.com/scenes/scene-Qqkzy9k7Eo.m4a?v=1418162240715"

   # 主页音频是否显示 #
   home_audio: true

   # 文章页音频是否显示 #
   post_audio: true

   # 背景图片 #
   home_bgimage: /images/background.png

   # 关于页面设置，怎么生成关于页面? 命令:$ hexo new page "about" #
   #提供两种选择: 默认是第一种(home_about)
   #1.home_about:在主页显示关于我
   #2.menu_about:在菜单栏新开一个菜单"关于", 请确保菜单配置menu，添加了about项(打开上面menu,about的注释)
   about_type: home_about
   ```

# 关于(About)页面：

如果你之前没有创建过 **about** 页面，可以通过下面命令得到：

```shell
$ hexo new page "about"
```

之后会在 **Hexo** 的 **source** 目录自动创建 **about/index.md** ，这个 **index.md** 就是我们的**关于(About)**页面。也就是说使用 **markdown** 语法来写自己的**关于我**。

# TODO List: 

- 站内搜索
- 分享功能
- 页面美观交互优化
- 未知需求

**（希望能有前端小哥给我提PR）**

# 鸣谢：

感谢以下主题，提供的参考帮助：

- [NexT](https://github.com/iissnan/hexo-theme-next)	
- [Random](https://github.com/stiekel/hexo-theme-random)


# License:

[**MIT** **License**](/LICENSE)



# 更新记录：

#### v1.1

- ##### **去掉多说评论，更换为[来必力](https://livere.com/)**



- **适配移动端**

