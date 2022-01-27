require "rails_helper"

RSpec.describe "/", type: :system do
  it "GET /" do
    visit "/" # / へHTTPメソッドGETでアクセス
    expect(page).to have_text("Feed Add")
  end
end
