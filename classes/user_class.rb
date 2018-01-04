# User class for EMR Ruby Demo
class User
  attr_accessor :id, :user_name, :user_gender, :user_email, :user_hash, :user_salt

  def initialize(id, user_name, user_gender, user_email, user_hash, user_salt)
    @id = id
    @user_name = user_name
    @user_gender = user_gender
    @user_email = user_email
    @user_hash = user_hash
    @user_salt = user_salt
  end
  
end
