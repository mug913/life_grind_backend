class Api::V1::LoginController < ApplicationController
    def create 
        if (params[:username])
        user = User.find_by_username(params[:username])
            if user.password == params[:password]
                render json: user.id
            end
        end
    end
  
     
   private
  
   def goal_params
       params.require(:goal).permit(:username, :email, :password)
   end
  
  end