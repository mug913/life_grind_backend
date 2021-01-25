class GoalRecordsSerializer < ActiveModel::Serializer
    attributes :created_at, :field_1_name, :field_1_type, :field_1_data, :field_2_name, :field_2_type, :field_2_data,
    :field_3_name, :field_3_type, :field_3_data

end
