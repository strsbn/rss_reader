# == Schema Information
#
# Table name: rss_items
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  link        :string(255)      not null
#  pubdate     :datetime         not null
#  subject     :text(65535)
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  feed_id     :bigint           not null
#
# Indexes
#
#  index_rss_items_on_feed_id  (feed_id)
#
# Foreign Keys
#
#  fk_rails_...  (feed_id => feeds.id)
#
class RssItem < ApplicationRecord
  belongs_to :feed

end
