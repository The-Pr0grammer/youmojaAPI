class CommentsController < ApplicationController
    def index
        @comments = Comment.all.order(id: :asc)
        render json: @comments, include: {user: {only: ['username','img_url'] }}
    end

    def show
        @comment = Comment.find_by(id:params[:id])        
        render json: @comment, include: {user: {only: ['username','img_url'] }}
    end

    def create 
        @comment = Comment.create(comment_params)
        render json: @comment, include: {user: {only: ['username','img_url'] }}
    end 

    def comment_params
        params.require(:comment).permit(:business_id, :user_id, :content)
    end
end
