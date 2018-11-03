class Users::RegistrationsController < Devise::RegistrationsController

  protected

  # The path used after sign up. You need to overwrite this method
  # in your own RegistrationsController.
  def after_sign_up_path_for(resource)
    session[:user_id] = current_user.id
    welcome_aftersignup_path
  end

  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
     welcome_afterinactivesignup_path
  end


  def after_update_path_for(resource)
    welcome_afterupdate_path
  end


end