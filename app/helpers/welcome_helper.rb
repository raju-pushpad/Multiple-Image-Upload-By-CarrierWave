module WelcomeHelper
	def save_image(image_params)
		image_params.each do |image|
  		photo = @user.profiles.new(image: image)
      photo.save
  	end
	end

	def delete_image(data)
    data.remove_image!
    data.delete
	end

	def demo
		@data.name
		# byebug
	end

	def xyz(image)
		  link_to image.image_url, class: 'img-fluid', 'data-toggle': 'lightbox', 'data-gallery': 'lightboxg' do 
			image_tag(image.image_url, :class=> "img-fluid ")  
	end
end
end
