require 'matrix'
require 'tf-idf-similarity'
class TfidfTextController < ApplicationController
  before_action :authenticate_user!
  def index
    @tfidf_text = TfidfText.all
  end

  def analysis
   @tfidf_text = TfidfText.find(params[:id])
   @stopwords = Stopword.all
   @text_1 = TfIdfSimilarity::Document.new(@tfidf_text.text_1.downcase.split(/\W+/).select {|k, v|  !Stopword.all.pluck(:word).include? k}.map {|c| ::IndonesianStemmer.stem(c)}.join(' '))
   @text_2 = TfIdfSimilarity::Document.new(@tfidf_text.text_2.downcase.split(/\W+/).select {|k, v|  !Stopword.all.pluck(:word).include? k}.map {|c| ::IndonesianStemmer.stem(c)}.join(' '))
   corpus = [@text_1, @text_2]
   @model = TfIdfSimilarity::TfIdfModel.new(corpus)
   @matrix = @model.similarity_matrix
   @similarity = @matrix[@model.document_index(@text_1), @model.document_index(@text_2)]
  
  end

  def new
    @tfidf_text = TfidfText.new
  end

  def create
    @tfidf_text = TfidfText.new(tfidf_text_params)
    if @tfidf_text.save
      redirect_to tfidf_texts_path
    else
      render 'new'
    end
  end

  def edit
    @tfidf_text = TfidfText.find(params[:id])
  end

  def update
    @tfidf_text = TfidfText.find(params[:id])

    if @tfidf_text.update(tfidf_text_params)
      redirect_to tfidf_texts_path
    else
      render 'Edit'
    end
  end

  def destroy
    @tfidf_text = TfidfText.find(params[:id])
    @tfidf_text.destroy
    redirect_to tfidf_texts_path
  end

  private
    def tfidf_text_params
      params.require(:tfidf_text).permit(:user_id, :text_1, :text_2)
    end
end