class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def new
	end

	def create
	end

	def show
		# flash[:notice] = 'login successful' if user_signed_in?
	end
end
