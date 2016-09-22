class Comment < ActiveRecord::Base
  belongs_to :jumper, foreign_key: 'user_id', class_name: 'User'
  belongs_to :jump
end