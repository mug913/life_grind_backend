# frozen_string_literal: true

class User < ActiveRecord::Base
  #added to resolve devise-token-auth migration issue 1276  
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :goals, dependent: :destroy

end
