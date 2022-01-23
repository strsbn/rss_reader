class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def create
    @feed = Feed.new(feed_params)
    @feed.save
    render 'static_pages/home'
  end

  private

  def feed_params
    params.permit(:title, :endpoint)
  end
end

