class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo])
  end

  def after_sign_in_path_for(user)
    fish_index_path
  end
end
