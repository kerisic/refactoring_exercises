# Understands sanitising a user's email and sending them an email
class UserContacter
  def send_email_to(user)
    mail = Mail.new(Sanitiser.new.sanitise(user))

    mail.send_message
  end
end

class Sanitiser
  def sanitise(user)
    email.strip
  end
end
