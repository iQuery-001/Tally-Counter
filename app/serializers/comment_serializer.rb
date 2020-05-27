class CommentSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  
  attributes :user_id, :tally_id, :content

  belongs_to :user
  belongs_to :tally
end
