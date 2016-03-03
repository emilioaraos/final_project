class UsersController < ApplicationController
	before_action :authenticate_user!, only: :show

	def index
		@users=User.find_by(id: params[:id])
	end
	def show

		@user= User.find(params[:id])
		@forms= @user.forms
		
	end

	def user_form

	end


end