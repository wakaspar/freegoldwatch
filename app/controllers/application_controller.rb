class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource_or_scope)
    prints_path
  end


  def after_sign_out_path_for(resource_or_scope)
    new_admin_session_path
  end

  def page_not_found
    render :file => "#{Rails.root}/public/404.html",  :status => 404
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password])
  end

end
