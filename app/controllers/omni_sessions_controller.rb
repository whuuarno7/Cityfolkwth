class OmniSessionsController < ApplicationController
	def create
		auth = request.env['omniauth.auth']
		user = User.where(provider: auth['provider'], uid: auth['uid']).first || User.create_with_omniauth(auth)
		session[:user_id] = user_id
		redirect_to root_path
	and
end
