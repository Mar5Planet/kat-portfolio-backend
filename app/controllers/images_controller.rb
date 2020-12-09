class ImagesController < ApplicationController
    before_action :set_image, only: [:update, :destroy]

    def index 
        images = Image.all 
        render json: images 
    end 

    def create 
        @image = Image.new(images_params)
        if @image.save 
            render json: @image, status: :created, location: @image
        else 
            render json: @image.errors, status: :unprocessable_entity
        end
    end 

    def update 
        if @image.update(images_params)
            render json: @image 
        else 
            render json: @image.errors, status: :unprocessable_entity
        end
    end 

    def destroy
        @image.destroy 
    end

    private

    def set_image 
        @image = Image.find(params[:id])
    end

    def images_params 
        params.require(:image).permit(:content_id, :img)
    end
    
end
