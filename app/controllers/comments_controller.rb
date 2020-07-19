class CommentsController < ApplicationController
    def index
        @comments = Comment.all.order(id: :desc)
        render json: @comments, include: {user: {}}
    end
    def show
        @comment = Comment.find_by(id:params[:id])        
        render json: @comment, include: {user: {}}
    end
end
