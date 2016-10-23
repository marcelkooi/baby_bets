class Bet < ActiveRecord::Base
  belongs_to :property
  has_one :differential

end
