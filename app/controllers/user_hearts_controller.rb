class UserHeartsController < ApplicationController
    def index
        @user_hearts = UserHeart.all.order(id: :desc)
        render json: @user_hearts
        # include: {user: {},user_biz: {}}
    end


    def show
        @user_heart = UserHeart.find_by(id:params[:id])        
        render json: @user_heart, include: {user: {}, user_biz: {include:{business:{include:{comments:{}}},user:{}}}}
    end

    def create
        # byebug
        @user_heart = UserHeart.create(user_heart_params)
    end
 
    def user_heart_params
        params.require(:user_heart).permit(:user_id, :user_biz_id)
    end
end
