class GoalRecord < ApplicationRecord

    belongs_to :goal, dependent: :destroy
end
