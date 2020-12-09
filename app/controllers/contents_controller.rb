class ContentsController < ApplicationController 
    before_action :set_content, only: [:update, :destroy]

    def index 
        contents = Content.all 
        render json: contents 
    end 

    def create 
        @content = Content.new(contents_params)
        if @content.save 
            render json: @content, status: :created, location: @content
        else 
            render json: @content.errors, status: :unprocessable_entity
        end
    end 

    def update 
        if @content.update(contents_params)
            render json: @content 
        else 
            render json: @content.errors, status: :unprocessable_entity
        end
    end 

    def destroy
        @content.destroy 
    end

    private

    def set_content 
        @content = Content.find(params[:id])
    end

    def contents_params 
        params.require(:content).permit(:img, :desc, :title, :category)
    end
    
end 
