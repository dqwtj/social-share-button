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
                        :onclick => "return SocialShareButton.share($(this).data('site'), $(this).parent().data('title'));")
      end
      html << "</div>"
      raw html.join("\n")
    end
  end
end