class Users::PasswordsController < Devise::PasswordsController
  protected
  def after_resetting_password_path_for(resource)
    welcome_afterressetingpass_path
  end
end
