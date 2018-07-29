class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  private

  	def private_access
  		redirect_to new_user_session_path, notice: "You don't have access to this page" unless signed_in?
		end
end