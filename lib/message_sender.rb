module MessageSender
  def self.send_code(phone_number, code)
    account_sid = 'ACff849d389306a22bf267475632a58ee1'
    auth_token  = 'd98cb8ffb2dbf189c271bde9734604e3'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
      from:  '+12162796336',
      to:    phone_number,
      body:  code
    )

    message.status == 'queued'
  end
end
