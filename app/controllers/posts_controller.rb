class PostsController < ApplicationController
	before_filter :authorize
	def index
		@users = User.all
	end

	def show
		
	end
end
