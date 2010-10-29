class SignInAsController < ApplicationController
	include SignInAs::Concerns::RememberAdmin
	
	def create
		if current_user.is_admin?
			self.remember_admin_id = current_user.id
			sign_in :user, User.find(params[:id])
		end
		
		redirect_to :root
	end
end