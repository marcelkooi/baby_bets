# == Schema Information
#
# Table name: bets
#
#  id         :integer          not null, primary key
#  value      :string           not null
#  sum        :decimal(, )
#  topic_id   :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
