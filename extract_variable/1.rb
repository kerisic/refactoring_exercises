def send_email_to(user)
  mail = Mail.new(user.email.strip)
  mail.send_message
end
