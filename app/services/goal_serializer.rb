class GoalSerializer < ActiveModel::Serializer
    attributes :id, :name, :position, :streak, :level, :field_number, :user_id, :goal_records

 
    def goal_records
        ActiveModelSerializers::SerializableResource.new(object.goal_records, each_serializer: GoalRecordsSerializer)
    end
end
