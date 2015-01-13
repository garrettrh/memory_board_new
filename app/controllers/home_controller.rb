class HomeController < ApplicationController

	def index
		@memories = Memory.all
		@users = User.all
	end

	end
	
end
