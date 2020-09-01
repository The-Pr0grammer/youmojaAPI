class UserHeartsController < ApplicationController
    def index
        @user_hearts = UserHeart.all.order(id: :desc)
        render json: @user_hearts,
        include: {user: {},business: {}}
    end


    def show
        @user_heart = UserHeart.find_by(id:params[:id])        
        render json: @user_biz, include: {user: {}, business: {}}
    end

    def create
        @user_heart = UserHeart.create(user_heart_params)
    end
 
    def user_heart_params
        params.require(:user_heart).permit(:user_id, :business_id)
    end
end
