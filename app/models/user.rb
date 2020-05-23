class User < ApplicationRecord
    has_many :tallies
    has_many :comments
    has_many :targets, through: :tallies, class_name: :user
    has_many :creators, through: :tallies, class_name: :user
end
