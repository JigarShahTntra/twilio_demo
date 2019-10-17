module MessageSender
  def self.send_code(phone_number, code)
    account_sid = 'SID'
    auth_token  = 'token'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
      from:  '+12162796336',
      to:    phone_number,
      body:  code
    )

    message.status == 'queued'
  end
end
