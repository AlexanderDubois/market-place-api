class Api::V1::AuthController < ApplicationController 

    def login 
        user = User.find_by(email: params[:email])

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
                errors: user.errors.full_messages,
                status: 400
            }

        end

    end

    def get_current_user
        if session_user
          render json: {user: UserSerializer.new(session_user)}
        else
          render json: {errors: "Whoa! Hold your horses!"}
        end
      end

end