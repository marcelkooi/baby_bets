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

class Topics::Characteristic < Topic
  def diff_message

  end

  def self.model_name
    super.tap do |name|
      %w(param_key singular_route_key route_key).each do |key|
        name.instance_variable_set "@#{key}", base_class.model_name.send(key)
      end
    end
  end
end
