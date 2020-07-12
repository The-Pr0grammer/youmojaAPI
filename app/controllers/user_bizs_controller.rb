class UserBizsController < ApplicationController
    def index
        @userbizs = UserBiz.all.order(id: :desc)
        render json: @userbizs,
        include: {user: {},business: {}}
    end

    def show
        @userBiz = UserBiz.find_by(id:params[:id])        
        render json: @userBiz, include: {user: {}, business: {}}
    end

   
end