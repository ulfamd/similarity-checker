class RenameBaseWordsOn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :first_documents, :base_words, :base_word
  end
end