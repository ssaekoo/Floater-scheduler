class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :session_token, :address, :user_type_id)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :session_token, :address, :user_type_id)
  end
end
