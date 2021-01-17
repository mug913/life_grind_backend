class Api::V1::LoginsController < ApplicationController
    def create 
        if (params[:name])
        user = User.find_by_username(params[:name])
            if user.password == params[:password]
                render json: user.id
            end
        end
    end
  
     
   private
  
   def login_params
       params.require(:login).permit(:name, :email, :password)
   end
  
  end