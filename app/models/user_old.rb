class User < ApplicationRecord
    has_many :tallies

    # has_many :targeted_users, foreign_key: :target_id, class_name: 'Tally'
    # has_many :targets, through: :targeted_users

    # has_many :created_users, foreign_key: :creator_id, class_name: 'Tally'
    # has_many :creators, through: :created_users

    # has_many :creators, through: :tallies, foreign_key: :creator_id, source: :creator
    # has_many :targets, through: :tallies, foreign_key: :target_id, source: :target

    
    has_many :comments
end
