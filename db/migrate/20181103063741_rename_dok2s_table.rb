class RenameDok2sTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :dok2s, :second_documents
  end
end
