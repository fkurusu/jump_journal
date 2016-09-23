class User < ActiveRecord::Base
  has_one :profile
  has_many :jumps
  has_many :comments
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
end