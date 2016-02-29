module VideosHelper

	def embed(embed_code)
    youtube_id = embed_code.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

end
