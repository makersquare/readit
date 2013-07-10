class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = @link.comments.build
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])

    if @link.save
      redirect_to @link
    else
      render :new
    end
  end
end
