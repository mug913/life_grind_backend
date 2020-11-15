class Goal < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :goal_records, dependent: :destroy

end
