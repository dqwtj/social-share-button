# coding: utf-8
module SocialShareButton
  module Helper
    def social_share_button_tag(file = "", opts = {})
      rel = opts[:rel]
      html = []
      html << "<div class='social-share-button' data-title='#{file}'>"
      
      SocialShareButton.config.allow_sites.each do |name|
        link_title = [t("social_share_button.share_to"),t("social_share_button.#{name.downcase}")].join("")
        html << link_to("","#", :rel => "nofollow #{rel}", 
                        "data-site" => name, 
                        :class => "social-share-button-#{name}", 
                        :onclick => "return SocialShareButton.share($(this).data('site'), $(this).parent().data('title'));",
                        :confirm => '欢迎您用最快速的方式分享自己的作品到人人！但近期主页君发现，用此分享按钮发布歌曲，会导致歌曲下载地址被公布。所以O2友情建议大家用以下步骤，通过发布人人日志分享，以保护自己的作品，方法如下：

  1. 点击“取消”后，在当前页面“操作”列下找到”下载“图标
  2. 右键点击“下载”图标，复制链接
  3. 在人人网新建日志，点击“插入视频/音频”，将链接贴入，点击确定

歌曲插入成功了~~~
之后，O2建议你在日志里介绍你的作品名字啊、歌曲内容啊歌词啊神马的，丰富您作品的内容~~~~
在这里，我们附上沙鸥的音乐圈子里的发歌格式给大家作为参考：http://xiaozu.renren.com/xiaozu/258332/336414127

建立真实的音乐联系，支持好声音！
您的朋友O2录音棚')
      end
      html << "</div>"
      raw html.join("\n")
    end
  end
end