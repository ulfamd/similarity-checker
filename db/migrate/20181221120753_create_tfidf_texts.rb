class CreateTfidfTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :tfidf_texts do |t|
    	t.text :text_1
    	t.text :text_2
    	t.references :user
    	t.timestamps
    end
  end
end
