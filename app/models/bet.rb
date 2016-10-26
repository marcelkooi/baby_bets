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

class Bet < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  def differential
    '$0.00'
  end

end
