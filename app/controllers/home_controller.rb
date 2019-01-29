class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index, :home]
	def index
		
	end

	def faq

	end
end
