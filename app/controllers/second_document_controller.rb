class SecondDocument
	Controller < ApplicationController
	def index
		before_action :authenticate_user!, except: [:index, :home]
		@document = SecondDocument.all
	end
	def create
		@document = SecondDocument.new(dok_params)
		@document.save
		redirect_to second_document_index_path
	end
	private
	def document_params 
		params.permit(:base_word, :value_word)
	end

end
