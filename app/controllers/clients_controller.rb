class ClientsController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		@client = @user.clients.create(params[:client])
		redirect_to user_path(@user)
	end

	def show
		@client = Client.find(params[:id])
	end

end
