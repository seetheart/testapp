class UsersController < ApplicationController
    def create 
        User.create(name: params[:name], email: params[:email])
        render json: {message: "success"}, status: :ok
    end

    def index
        render json: User.all
    end
end