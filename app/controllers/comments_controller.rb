class CommentsController < ApplicationController
  def create
    @comment = Comment.new(user_id:current_user.id, text:params[:text], article_id:params[:id])
    if @comment.save
        redirect_to article_path(params[:id])
    else
        render "new"
    end
  end
end
