window.SocialShareButton =
  openUrl : (url) ->
    window.open(url)
    false
    
  share : (site, file) ->
    url = encodeURIComponent(file)
    title = encodeURIComponent("我在#O2录音棚#录制了我的新歌，欢迎收听")
    switch site
      when "weibo"
        SocialShareButton.openUrl("http://v.t.sina.com.cn/share/share.php?url=#{url}&title=#{title}&content=utf-8")
      when "twitter"
        SocialShareButton.openUrl("https://twitter.com/home?status=#{title}: #{url}")
      when "douban"
        SocialShareButton.openUrl("http://www.douban.com/recommend/?url=#{url}&title=#{title}&v=1&r=1")
      when "facebook"
        SocialShareButton.openUrl("http://www.facebook.com/sharer.php?t=#{title}&u=#{url}")
      when "qq"
        SocialShareButton.openUrl("http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=#{url}")
      when "renren"
        SocialShareButton.openUrl("http://share.renren.com/share/buttonshare.do/post/4001?url=#{url}&title=#{title}")
    false