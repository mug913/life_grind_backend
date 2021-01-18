class Api::V1::GoalRecordsController < Api::V1::BaseController
  def index 
    if (params[:goal_id])
     goal = Goal.find_by_id(params[:goal_id])
     records = goal.goal_records.all
     render json: records
    elsif (params[:user_id])
      user = Goal.find_by_id(params[:goal_id])
        records = goal.goal_records.all
        render json: records
     records = GoalRecords.all
     render json: records
     end
  end

  def show 
    record = GoalRecord.find_by_id(params[:id])
    render json: record
  end

  def create
    goal = Goal.find_by_id(params[:goal_id])
    record = goal.goal_records.create(record_params)
      if record.valid?
        render json: record, status: :accepted
    else
        render json: {errors: record.errors.full_messages}, status:
        :unprocessible_entity
    end
  end

  def delete
  end


  private
    
    def record_params
        params.require(:goal_record).permit( :date, :field_1_name, :field_1_type, :field_1_data,
                                        :field_2_name, :field_2_type, :field_2_data,
                                        :field_3_name, :field_3_type, :field_3_data)
    end

end