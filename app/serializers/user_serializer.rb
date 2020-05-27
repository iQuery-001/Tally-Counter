class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  
  attributes :username, :email
  
  has_many :tallies
  has_many :comments

  # has_many :targeted_users, foreign_key: :target_id, class_name: 'Tally'
  # has_many :targets, through: :targeted_users

  # has_many :created_users, foreign_key: :creator_id, class_name: 'Tally'
  # has_many :creators, through: :created_users

  
end
