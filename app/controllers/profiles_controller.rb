class ProfilesController < ApplicationController
	def index
		@profile = Profile.all
	end
end
