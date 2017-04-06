class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  protected

  def configure_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |admin_params|
      user_params.permit(:username, :email)
    end
  end

end
