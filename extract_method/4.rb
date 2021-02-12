class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def body
    base_body = "Welcome to MyProduct"
    body = @fancy ? "#{ base_body }, fancy person!" : base_body
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    mail_server.send_message({ to: @email, body: body })
  end
end
