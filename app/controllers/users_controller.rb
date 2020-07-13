class UsersController < ApplicationController
  
        def show
            @user = User.find_by(id:params[:id])        
            render json: @user, include: {user_likes: {}}
        end

end
