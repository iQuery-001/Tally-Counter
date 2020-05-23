class Tally < ApplicationRecord
    has_many :comments
    belongs_to :creator, class_name: :user
    belongs_to :target, class_name: :user
end
