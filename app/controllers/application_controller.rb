class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true


  protected

  def after_sign_in_path_for(resource_or_scope)
    prints_path
  end

  def configure_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |admin_params|
      user_params.permit(:username, :email)
    end
  end

end
