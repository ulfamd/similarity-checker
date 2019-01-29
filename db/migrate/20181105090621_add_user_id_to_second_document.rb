class AddUserIdToSecondDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :second_documents, :user_id, :integer
  end
end
