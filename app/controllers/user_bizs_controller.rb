class UserBizsController < ApplicationController
    def index
        @user_bizs = UserBiz.all.order(id: :desc)
        render json: @user_bizs,
        include: {user: {},business: {}}
    end
    def show
        @user_biz = UserBiz.find_by(id:params[:id])        
        render json: @user_biz, include: {user: {}, business: {}}
    end
end