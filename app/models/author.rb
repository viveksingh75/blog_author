class Author < ApplicationRecord
  after_create :send_welcome_email
    has_secure_password
    has_many :blogs
  has_many :comments, as: :commentable
  def send_welcome_email
    RegistrationMailer.welcome_email(self).deliver_now
  end

end
