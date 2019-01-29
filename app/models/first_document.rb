class FirstDocument < ApplicationRecord
	mount_uploader :attachment, FirstDocumentUploader # Tells rails to use this uploader for this model.
   	validates :name, presence:true # Make sure the owner's name is present. 
end