class RssItemsController < ApplicationController
  def index
    @rss_items = RssItem.all
  end
end
