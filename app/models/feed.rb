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
end
