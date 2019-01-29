class CreateCitationSources < ActiveRecord::Migration[5.2]
  def change
    create_table :citation_sources do |t|
      t.integer :source_id
      t.string :citation_source_writer_name
      t.integer :citation_source_year
      t.string :citation_source_title
      t.string :citation_source_publisher
      t.text :citation_source_sentence

      t.timestamps
    end
  end
end
