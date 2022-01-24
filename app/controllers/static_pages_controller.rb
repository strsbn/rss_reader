class StaticPagesController < ApplicationController
  def home
    @feed = Feed.new
  end

  def about
  end

  def help
  end
end
