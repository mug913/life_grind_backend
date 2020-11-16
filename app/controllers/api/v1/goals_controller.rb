class Api::V1::GoalsController < ApplicationController
  def index 
    if (params[:user_id])
     user = User.find_by_id(params[:user_id])
     goals = user.goals.all
     render json: goals
    else
     goals = Goal.all
     render json: goals
     end
 end

 def show 
      goal = Goal.find_by_id(params[:id])
      render json: goal
 end

 def create
     user = User.find_by_id(params[:user_id])
     goal = user.goals.create(goal_params)
     if goal.valid?
         render json: goal, status: :accepted
     else
         render json: {errors: goal.errors.full_messages}, status:
         :unprocessible_entity
     end
 end

 def update
     user = User.find_by_id(params[:user_id])
     goal = Goal.find_by_id(params[:id])
     goal.update(last_click: params[:last_click])
     if goal.valid?
         render json: goal, status: :accepted
     else
         render json: {errors: goal.errors.full_messages}, status:
         :unprocessible_entity
     end
  end
  
  def destroy
    Goal.delete(params[:id])
  end

 private

 def goal_params
     params.require(:goal).permit(:name, :position, :level, :streak, :field_number, :id)
 end

end


