class Models::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :configure_account_update_params, only: [:update]

  def user_params
    params.require(:model).permit(:username ,:first_name, :last_name, :profile_picture,  :email, :password, :password_confirmation)
  end