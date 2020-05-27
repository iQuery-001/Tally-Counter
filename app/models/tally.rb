class Tally < ApplicationRecord
    has_many :comments
    belongs_to :user
    # belongs_to :target, class_name: 'User'
    # belongs_to :creator, class_name: 'User'
end
