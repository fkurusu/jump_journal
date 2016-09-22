class Profile < ActiveRecord::Base
  belongs_to :jumper, foreign_key: 'user_id', class_name: 'User'
end