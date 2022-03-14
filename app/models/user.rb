class User < ActiveRecord::Base


  has_secure_password

  validates :password, length: { minimum: 10 }

  validates :password_confirmation, presence: true

  validates :email, presence: true

  validates :name, presence: true

  validates :email, uniqueness: { case_sensitive: false }

  def self.authenticate_with_credentials(email, password)

    user = User.find_by_email(email.strip.downcase)

    if user && user.authenticate(password)

      return user

    else

      return nil

    end

  end

end
