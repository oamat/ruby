class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 ########## MULTILANGUAGE ##########
  before_action :set_locale

  def set_locale
    puts "I18n.locale : #{I18n.locale}"
    I18n.locale = params[:locale] || I18n.default_locale
    puts "I18n.locale : #{I18n.locale}"
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end
 ########## END MULTILANGUAGE ##########

  ######### DEVISE CONFIG REDIRECTS ######
  # DEVISE OVERRIDE HELPERS
  # Devise::PasswordsController   #after_resetting_password_path_for
  # Devise::RegistrationsController   #after_sign_up_path_for
  # Devise::SessionsController < DeviseController
  # Devise::ConfirmationsController < DeviseController
  # Devise::UnlocksController < DeviseController
  # Devise::OmniauthCallbacksController < DeviseController  #we not use
  # Devise::Controllers::Helpers

  private
  #override the default behaviour in devise by creating an  after_sign_in_path_for method in your  ApplicationController  and have it return the path for the page you want:
  def after_sign_in_path_for(resource)

    user = current_user

    session[:user_id] = user.id

    profile = user.profile

    if profile.nil?

      flash[:warning] = t(:warning_editing_profile)
      new_profile_path

    else

      session[:profile_id] = profile.id


      if profile.company_id.nil?
        flash[:warning] = t(:warning_editing_company)
        new_company_path
        else

          session[:company_id] = profile.company_id

          welcome_gestionus_path
      end

    end


  end


  #overwrite after_sign_out_path_for. Notice that differently from after_sign_in_path_for this method receives a symbol with the scope, and not the resource.
  def after_sign_out_path_for(resource_or_scope)
   # URI.parse(request.referer).path if request.referer
    welcome_aftersignout_path
  end
 ######### END DEVISE CONFIG REDIRECTS ######
end
