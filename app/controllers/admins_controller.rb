class AdminsController < ApplicationController
    def login
        @admin =  Admin.find_by(username: params[:username])
        # byebug
        if @admin.authenticate(params[:password])
            render json: {'valid': 'success'}
        else 
            render json: {"errors": "password is incorrect"}
        end

    end

end
