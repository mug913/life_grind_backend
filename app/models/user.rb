class User < ApplicationRecord
   has_many :goals, dependent: :destroy

   validates :username, :password_digest, :email, presence: true
   validates :username, :email, uniqueness: true
   has_secure_password
end
