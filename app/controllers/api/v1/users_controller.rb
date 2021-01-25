class Api::V1::UsersController < Api::V1::BaseController

    before_action :authenticate_api_v1_user!

    def index 
        users = User.all
        render json: users, each_serializer: UsersSerializer
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user, each_serializer: UserSerializer
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :accepted
        else
            render json: {errors: errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :tz)
    end

end
