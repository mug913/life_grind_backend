class UserSerializer < ActiveModel::Serializer
   attributes :id, :name, :goals

   def goals
    ActiveModelSerializers::SerializableResource.new(object.goals, each_serializer: GoalsSerializer)
   end

   
end
