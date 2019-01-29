class RenameWordsOnStopwords < ActiveRecord::Migration[5.2]
  def change
	rename_column :stopwords, :words, :word  	
  end
end