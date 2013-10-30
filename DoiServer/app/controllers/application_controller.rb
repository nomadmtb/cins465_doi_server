class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def check_user!
	  if !current_user
		  redirect_to root_path, :alert => 'Unauthenticated users are only allowed to search'
	  end
  end

end
