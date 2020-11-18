class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :goals

   def goals
    ActiveModel::SerializableResource.new(object.goals, each_serializer: GoalsSerializer)
   end

   
   
   
    # def initialize(user)
    #     @user = user
    # end

    # def all_to_serialized_json
    #     @user.to_json(:only => [:id, :username])
    # end

    # def to_serialized_json
    #     @user.to_json(:include => ['goals' , 'goals.goal_records'], :except => [:password_digest])
    # end
 
end
