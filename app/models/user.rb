class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, length: { minimum: 6 }, if: :password_required?

  private

  def password_required?
    password_digest.blank? || !password.blank?
  end
end

