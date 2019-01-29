class CitationController < ApplicationController
	
	def index
		@citation = Citation.all
	end

	def new
		@citation = Citation.new
	end

	def create
  @citation = Citation.new(citation_id: params[:citation_id], citation_writer__name: params[:citation_writer__name], citation_year: params[:citation_year], citation_title: params[:citation_title], citation_publisher: params[:citation_publisher], citation_sentence: params[:citation_publisher], citation_sentence: params[:citation_sentence])
			
			if @citation.save
         		redirect_to citation_index_path, notice: "The document #{@citation.citation_id} has been uploaded."
      		else
				render plain: 'berhasil menyimpan data kutipan'
	end
	end
	private
	def resource_params
		params.require(:citation).permit(:citation_id, :citation_writer__name, :citation_year, :citation_title, :citation_publisher, :citation_sentence)
	end
end