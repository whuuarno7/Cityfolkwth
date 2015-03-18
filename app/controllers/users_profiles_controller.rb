class UsersProfilesController < ApplicationController

  before_action :authenticate_user!

  def profile_user 
	@user =  User.find(params[:id])
	end 
		 
    
end