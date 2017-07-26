class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:new, keys: [:avatar])
  	devise_parameter_sanitizer.permit(:edit, keys: [:avatar])
  end
end
