class TextMessage
  def initialize content, to_number
    @content, @to_number = content, to_number
    self
  end

  def client
    @client ||= Twilio::REST::Client.new(ENV["TWILIO_SID"], ENV["TWILIO_AUTH"])
  end

  def send
    client.account.sms.messages.create(
      body: @content,
      to: @to_number,
      from: ENV["TWILIO_NUM"]
    )
  end
end