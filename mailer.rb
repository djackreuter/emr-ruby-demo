require_relative 'config.rb'
require 'pony'

# class for sending mail
class Mail
  def self.send_mail
    Pony.mail(from: params[:name],
              to: 'jack@jackreuter.com',
              subject: 'This is a test email!',
              body: params[:message],
              via: :smpt,
              via_options: {
                address: 'mail.jackreuter.com',
                port: '465',
                user_name: CONFIG[:username],
                password: CONFIG[:password],
                authentication: :plain,
                domain: 'localhost.localdomain'
              })
  end
end
