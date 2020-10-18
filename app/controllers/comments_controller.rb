class CommentsController < ApplicationController
    def index
        @comments = Comment.all.order(id: :asc)
        render json: @comments, include: {user: {only: ['username','img_url'] }}
    end

    def show
        @comment = Comment.find_by(id:params[:id])        
        render json: @comment ,adapter: nil, include: {user: {only: ['username','img_url']}, comment_votes: {only: ['user_id']}}
    end

    def create 
        @comment = Comment.create(comment_params)
        @comment_vote = CommentVote.create(user_id:comment_params["user_id"], comment_id:@comment.id, vote:1)
        render json: @comment, include: {user: {only: ['username','img_url'] }}
    end 

    def update
        @comment = Comment.find_by(id:params[:id])        
        if @comment.update(comment_params)
             render json: @comment
        else
            render json: @comment.errors, status: :unprocessable_entity
        end
      end

    def comment_params
        params.require(:comment).permit(:business_id, :user_id, :content, :score)
    end
end
