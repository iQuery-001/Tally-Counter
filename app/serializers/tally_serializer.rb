class TallySerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  
  attributes :user_id, :content

  has_many :comments
  belongs_to :user
end
