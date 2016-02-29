module VideosHelper

	def embed(embed_code)
    video_id = embed_code.split("/").last
    content_tag(:iframe, nil, src: "//player.vimeo.com/video/#{video_id}")
  end

  def video_type(category_id)
  	if category_id == 1
  		return "Streamline"
  	elsif category_id == 2
  		return "Essentials"
  	elsif category_id == 3
  		return "God Flow"
  	elsif category_id == 4
  		return "Writer's Block Is Dead"
  	elsif category_id == 5
  		return "Strictly for the Block"
  	end
  end
  			
  			
  			
  			

	# vimeo embed
	# <iframe src="https://player.vimeo.com/video/155347431" width="500" height="213" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	# <p><a href="https://vimeo.com/155347431">a Drop - short film</a> from <a href="https://vimeo.com/jvanhoenacker">Julien Vanhoenacker</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

	# youtube embed
	# <iframe width="560" height="315" src="https://www.youtube.com/embed/3rePZTLMJYs" frameborder="0" allowfullscreen></iframe>
end
