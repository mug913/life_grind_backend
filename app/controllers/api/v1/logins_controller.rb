class Api::V1::LoginsController < ApplicationController
    def create 
        if (params[:username])
        user = User.find_by_username(params[:username])
            if user.password == params[:password]
                render json: user.id
            end
        end
    end
  
     
   private
  
   def login_params
       params.require(:login).permit(:username, :email, :password)
   end
  
  end