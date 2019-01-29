class CreateStopwords < ActiveRecord::Migration[5.2]
  def change
    create_table :stopwords do |t|
      t.string :words

      t.timestamps
    end
  end
end
