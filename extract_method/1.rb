def new_email(email)
  mail = Mail.new(email)
end

def send_email_to(user)
  email = user.email.strip

  new_email(email).send_message
end
