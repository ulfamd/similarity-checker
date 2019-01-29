class RenameValueWords < ActiveRecord::Migration[5.2]
  def change
  	rename_column :first_documents, :value_words, :value_word
  end
end
