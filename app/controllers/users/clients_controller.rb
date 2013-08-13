class Users::ClientsController < ApplicationController

	def new
		@client = Client.new
		@user = User.find(params[:user_id])

	  respond_to do |format|
	    format.html # new.html.erb
	    format.json { render json: @comment }
	  end
	end

	def create
		@client = Client.new(params[:client])
		@client.name = params[:client][:name]
		@client.billing = params[:client][:billing]
		@user = User.find(params[:user_id])
		@client.user_id = @user.id

		respond_to do |format|

	    if @client.save
	    	raise params.inspect
	      format.html { redirect_to @user, notice: 'Client was successfully added.' }
	      format.json { render json: @user, status: :created, location: user_path(@user) }
	    else
	      format.html { render action: "new" }
	      format.json { render json: @client.errors, status: :unprocessable_entity }
    end
  end

		
	end

	def show
		@client = Client.find(params[:id])
	end


end
