class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

   
  protected

  	def ensure_admin!
  	  unless current_user.try(:admin?)
  	    sign_out current_user
	
  	    redirect_to root_path
	
  	    return false
  	  end
  	end

end
