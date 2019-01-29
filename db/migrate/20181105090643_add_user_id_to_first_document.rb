class AddUserIdToFirstDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :first_documents, :user_id, :integer
  end
end
