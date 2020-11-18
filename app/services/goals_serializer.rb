class GoalsSerializer < ActiveModel::Serializer
    attributes :id, :name, :position, :streak, :level, :field_number, :goal_records
 
    def goal_records
        ActiveModel::SerializableResource.new(object.goal_records, each_serializer: GoalRecordsSerializer)
    end
end
