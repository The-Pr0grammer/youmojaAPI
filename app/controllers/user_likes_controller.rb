class UserLikesController < ApplicationController
    def index
        @user_likes = UserLike.all.order(id: :desc)
        render json: @user_likes,
        include: {user: {},business: {}}
    end


    def show
        @user_like = UserLike.find_by(id:params[:id])        
        render json: @user_biz, include: {user: {}, business: {}}
    end

    def create
        @user_like = UserLike.create(user_like_params)
    end
 
    def user_like_params
        params.require(:user_like).permit(:user_id, :business_id)
    end
end
