require 'tf-idf-similarity'

class TfController < ApplicationController
  def new; end

  def create
    @text_1 = TfIdfSimilarity::Document.new(params[:text_1])
    text_2 = TfIdfSimilarity::Document.new(params[:text_2])
    corpus = [@text_1, text_2]
    @model = TfIdfSimilarity::TfIdfModel.new(corpus)
    @similarity = [@model.document_index(@text_1), @model.document_index(text_2)]
  end
end
