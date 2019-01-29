class CreateCitations < ActiveRecord::Migration[5.2]
  def change
    create_table :citations do |t|
      t.integer :citation_id
      t.string :citation_writer__name
      t.integer :citation_year
      t.string :citation_title
      t.string :citation_publisher
      t.text :citation_sentence

      t.timestamps
    end
  end
end
