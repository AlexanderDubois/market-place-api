class Api::V1::UsersController < ApplicationController

    def signup 
        @user = User.new(user_params)
        if @user 
            @user.save
            render json: @user
        else 
            render json: {
                error: "Could not save user, please check your request parameters",
                status: 400
            }
        end
    end

    def login 
        @user = User.find_by_email(params["email"])
        if @user 
            render json: @user 
        else 
            render json: {
                error: "Access denied, please sign up",
                status: 401
            }
        end
    end

    private 

    def user_params 
        params.permit(:name, :email, :profile_img_url)
    end
end
