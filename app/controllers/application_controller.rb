class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken

    before_action :configure_permitted_perameters, if: :devise_controller?

    respond_to :json


protected

def configure_permitted_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:data, :name, :password_confirmation])
end
end
