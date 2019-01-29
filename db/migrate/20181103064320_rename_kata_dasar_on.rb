class RenameKataDasarOn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :first_documents, :kata_dasar, :base_words
  end
end
