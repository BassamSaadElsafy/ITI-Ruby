
class Api::v1::UsersController < Api::V1::ApplicationController
    before_action :authorized, only: [:auto_login]
    
    # REGISTER
    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def test 
        render json: {'name' => 'bassam'}
    end
        
    # LOGGING IN
    def login
        @user = User.find_by(email: params[:email])
            
        if @user
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def auto_login
        render json: @user
    end

    private
    def user_params
        params.permit(:email, :password)
    end

end

