class StopwordsController < ApplicationController
 def index
		@stopwords = Stopwords.all
	end

	def create
		@stopwords = Stopwords.new(words: params[:words])
		filter = Stopwords::Filter.new stopword
  		if @stopwords.save
         	redirect_to stopwords_index_path, notice: "The document #{@stopwords.word} has been uploaded."
      	else
			render plain: 'berhasil menyimpan data kutipan'
	end
end
end
