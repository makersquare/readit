class CommentsController < ApplicationController
  before_filter :redirect_back_unless_logged_in

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end

  private

  def redirect_back_unless_logged_in
    redirect_to :back unless current_user.present?
  end
end
