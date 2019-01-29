class RenameBobotOn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :first_documents, :bobot, :value_words
  end
end