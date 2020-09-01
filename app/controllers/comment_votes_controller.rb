class CommentVotesController < ApplicationController
        def index
            @comment_votes = CommentVote.all.order(id: :asc)
            render json: @comment_votes
        end
    
        def show
            @comment_vote = CommentVote.find_by(id:params[:id])        
            render json: @comment_vote
        end
    
        def create 
            @comment_vote = CommentVote.create(comment_vote_params)
          render json: @comment_vote
          puts @comment_vote.errors.full_messages
        end 
    
        def update
          @comment_vote = CommentVote.find_by(id:params[:id])        
            if @comment_vote.update(comment_vote_params)
            render json: @comment_vote
            else
              render json: @comment_vote.errors, status: :unprocessable_entity
            end
          end

          def destroy
            @comment_vote = CommentVote.find(params[:id])
            @comment_vote.destroy
          end
          
          

        def comment_vote_params
            params.require(:comment_vote).permit(:comment_id, :user_id, :vote)
        end
    
end
