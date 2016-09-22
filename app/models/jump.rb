class Jump < ActiveRecord::Base
  belongs_to :jumper, foreign_key: 'user_id', class_name: 'User'
  has_many :comments
end
