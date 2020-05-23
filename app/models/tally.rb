class Tally < ApplicationRecord
    has_many :comments
    belongs_to :creator, source: :user
    belongs_to :target, source: :user
end
