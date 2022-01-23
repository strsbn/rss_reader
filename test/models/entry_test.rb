# == Schema Information
#
# Table name: entries
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  link        :string(255)
#  pubdate     :date
#  subject     :text(65535)
#  title       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
