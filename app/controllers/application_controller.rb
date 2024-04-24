class ApplicationController < ActionController::Base
  include Devise::Controllers::Helpers
  
  def after_sign_up_path_for(resource)
    model_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :last_name, :first_name, :profile_picture])
    
  end
end
