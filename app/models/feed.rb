# == Schema Information
#
# Table name: feeds
#
#  id         :bigint           not null, primary key
#  endpoint   :string(255)      not null
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Feed < ApplicationRecord
  require 'rss'

  has_many :rss_items, dependent: :destroy

  def fetch_insert
    parsed_xml(endpoint).items.map do | item |
      self.rss_items.create(
        pubdate: item.dc_date,
        title: item.title,
        description: item.description,
        link: item.link,
      )
    end
  end

  private

  def parsed_xml(endpoint)
    xml = Net::HTTP.get(URI.parse(endpoint))
    RSS::Parser.parse(xml)
  end
end
