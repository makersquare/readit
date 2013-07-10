class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params[:comment])
    redirect_to :back
  end
end
