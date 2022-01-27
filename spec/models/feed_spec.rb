require 'rails_helper'
RSpec.describe Feed, type: :model do
  describe "Feed#new" do # describeメソッドをつかってメソッドごとに区切ると読みやすいです
    it "Feed登録時にrssを取得し、xmlをparseできている事" do
      feed = Feed.new(title: "総務省rss", endpoint: "https://www.soumu.go.jp/news.rdf")
      expect(feed.save)
      expect(feed.fetch_insert).not_to be_empty
      expect(RssItem.last.link).to include "soumu.go.jp"
    end
  end
end
