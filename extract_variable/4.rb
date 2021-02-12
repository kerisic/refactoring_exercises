class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    fancymessage = { to: @email, body: "Welcome to MyProduct, fancy person!" }
    message = { to: @email, body: "Welcome to MyProduct" }
    server = "http://mixmax.com"
    key = "f20506xx808c"
    if fancy
      MailServer.connect(server, api_key: key).send_message(fancymessage)
    else
      MailServer.connect(server, api_key: key).send_message(message)
    end
  end
end
