class FeedsController < ApplicationController

  # GET /feeds
  def index
    @feeds = Feed.all
  end

  # GET /feeds/:id
  def show
    @feed = Feed.find_by(params[:id])
  end

  # POST /feeds
  def create
    @feed = Feed.new(feed_params)
    @feed.save
    render 'static_pages/home'
  end

  def update
    @feed = Feed.find_by(params[:id])
    if @feed.update(feed_params)
      redirect_to feeds_path
    else
      render 'edit'
    end
  end

  def destroy
    feed = Feed.find(params[:id])
    feed.destroy
    redirect_to feeds_path
  end

  private

  def feed_params
    params.require(:feed).permit(:title, :endpoint)
  end
end

