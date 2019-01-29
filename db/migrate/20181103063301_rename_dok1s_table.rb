class RenameDok1sTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :dok1s, :first_documents
  end
end
