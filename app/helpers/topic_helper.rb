module TopicHelper
  def topic_type_select_options
    select_hash = {}
    Topic::TYPES.map { |type| select_hash["#{type.demodulize}"] = type }
    select_hash
  end
end
