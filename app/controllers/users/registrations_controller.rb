class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :check_registration_enabled, :only => [:new, :create]


  def resource_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  protected

  def after_inactive_sign_up_path_for(resource)
    new_session_path(resource)
  end


  def check_registration_enabled
    if Fulcrum::Application.config.fulcrum.disable_registration
      render_404 and return
    end
  end

  private :resource_params

end