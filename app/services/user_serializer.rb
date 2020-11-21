class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :goals

   def goals
    ActiveModelSerializers::SerializableResource.new(object.goals, each_serializer: GoalsSerializer)
   end

   
end
