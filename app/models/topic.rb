# == Schema Information
#
# Table name: topics
#
#  id           :integer          not null, primary key
#  name         :string
#  multiplier   :decimal(, )      not null
#  unit         :string
#  actual_value :string
#  type         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Topic < ActiveRecord::Base
  has_many :bets

  TYPES = ['Topics::Characteristic', 'Topics::Date', 'Topics::Weight']
end
