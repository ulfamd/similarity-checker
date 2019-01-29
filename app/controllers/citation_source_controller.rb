class CitationSourceController < ApplicationController
  	def index
		@citation_source = CitationSource.all
	end

	def new
		@citation_source = CitationSource.new
	end

	def create
  			@citation_source = CitationSource.new(source_id: params[:source_id], citation_source_writer_name: params[:citation_source_writer_name], citation_source_year: params[:citation_source_year], citation_source_title: params[:citation_source_title], citation_source_publisher: params[:citation_source_publisher], citation_source_sentence: params[:citation_source_sentence])
			
			if @citation_source.save
         		redirect_to index_citation_source_path, notice: "The document #{@citation_source.source_id} has been uploaded."
      		else
				render plain: 'berhasil menyimpan data kutipan'
	end
	end
	private
	def resource_params
		params.require(:citation_source).permit(:source_id, :citation_source_writer_name, :citation_source_year, :citation_source_title, :citation_source_publisher, :citation_source_sentence)
	end
end