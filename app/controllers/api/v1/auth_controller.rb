class Api::V1::AuthController < ApplicationController 

    def login 
        user = User.find_by(email: params[:email])
        binding.pry

        if user && user.authenticate(params[:password])

            token = encode_token(user.id)

            render json: {user: user, token: token} 
        else 
            render json: {
                error: "Could not log in user",
                status: 400
            }
        end
    end

    def signup
        user = User.new(
            name: params[:name],
            email: params[:email],
            profile_img_url: params[:profile_img_url],
            password: params[:password]
        )

        if user.save 
            token = encode_token(user.id)

            render json: {user: user, token: token}
        else 
            render json: {
                error: "Could not signup user",
                status: 400
            }

        end

    end

end