class CommentsController < ApplicationController
    
    def create
        @comment= Comment.new
        @comment.email=current_user.email
        @comment.name=params[:input_name]
        @comment.content=params[:input_comment]
        @comment.trip_id=params[:trip_id]
        @comment.save
        redirect_to "/trips/show/#{params[:trip_id]}"
    end
    
    def destroy
        @comment=Comment.find(params[:comment_id])
        @comment.destroy
        redirect_to "/trips/show/#{params[:trip_id]}"
    end 
end
