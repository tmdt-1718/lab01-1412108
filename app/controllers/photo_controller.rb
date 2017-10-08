class PhotoController < ApplicationController
	def new_photo
		#render plain: params[:photo].inspect
		@photo = Photo.new(photo_params)
		@photo.save

		redirect_to @photo
	end

	def create
	end

	def show
		@photo = Photo.find(params[:id])
	end

	private
	def photo_params
		params.require(:photo).permit(:image, :uploader, :title, :description, :album)
	end
end
