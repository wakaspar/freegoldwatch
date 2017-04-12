class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource_or_scope)
    prints_path
  end


  def page_not_found
    render :file => "#{Rails.root}/public/404.html",  :status => 404
  end

  protected

  def configure_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |admin_params|
      user_params.permit(:username, :email)
    end
  end

end
