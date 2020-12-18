class Message
  include Turbo::Broadcastable

  attr_reader :record_id, :content

  def initialize(record_id:, content:)
    @record_id, @content = record_id, content
  end

  def to_key
    [ record_id ]
  end

  def to_param
    "message:#{record_id}"
  end

  def to_partial_path
    "messages/message"
  end

  def to_s
    content
  end

  def model_name
    ActiveModel::Name.new(self.class)
  end
end
