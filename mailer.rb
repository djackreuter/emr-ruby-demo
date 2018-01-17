require_relative 'config.rb'
require 'mail'

# class for sending mail
class Mailer
  def self.send_mail(params)
    Mail.defaults do
      delivery_method :smtp, {
        port: 587,
        address: 'smtp.mailgun.org',
        user_name: CONFIG[:user_name],
        password: CONFIG[:password]
      }
    end

    Mail.deliver do
      to CONFIG[:recipient]
      from params[:email]
      subject params[:subject]

      text_part do
        body params[:message]
      end
    end
  end
end
