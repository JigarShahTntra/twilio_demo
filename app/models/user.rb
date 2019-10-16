class User < ApplicationRecord
  has_secure_password

  validates :name,:email, :phone_number, :password_digest, presence: true

  validates_uniqueness_of :email

  def confirm!
    self.confirmed = true
    save!
  end
end
