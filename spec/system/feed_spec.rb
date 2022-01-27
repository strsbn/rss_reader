require "rails_helper"

RSpec.describe "feeds", type: :system do
  it "POST /" do
    visit "/"
    fill_in "feed_title", with: "総務省RSS" # Title入力欄に""を入力する
    fill_in "feed_endpoint", with: "https://www.soumu.go.jp/news.rdf"
    click_button "Add feed url..." # ボタンを押す

    visit "/feeds"
    expect(page).to have_text("総務省RSS")

    visit "/rss_items"
    expect(page).to have_text("更新日")
    expect(page).to have_text("UTC") # rss内容が更新されても必ずある文字列
  end
end
