class UserController < ApplicationController


def new
	@user = User.new
end

def login

end

def create
	@user = User.create(:first_name => params[:user][:first_name] ,
						:last_name  => params[:user][:last_name],
						:role => params[:user][:role],
						:email => params[:user][:email],
						:password => params[:user][:password],
						:password_confirmation => params[:user][:password_confirmation],
						:contact_number => params[:user][:contact_number])
end

end
