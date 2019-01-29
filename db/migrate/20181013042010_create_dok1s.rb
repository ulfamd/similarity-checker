class CreateDok1s < ActiveRecord::Migration[5.2]
  def change
    create_table :dok1s do |t|
      t.string :kata_dasar
      t.integer :bobot
      t.timestamps
    end
  end
end
