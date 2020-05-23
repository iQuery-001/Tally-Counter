class User < ApplicationRecord
    has_many :tallies
    has_many :comments
    has_many :targets, through: :tallies, source: :user
    has_many :creators, through: :tallies, source: :user
end
