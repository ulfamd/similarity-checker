class FirstDocumentController < ApplicationController
	
	def index
	      @first_document = FirstDocument.all
	end
	   
	def new
      @first_document = FirstDocument.new
   end
   
   def create
      @first_document = FirstDocument.new(first_document_params)
      
      if @first_document.save
         redirect_to first_document_path, notice: "The document #{@first_document.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @first_document = FirstDocument.find(params[:id])
      @first_document.destroy
      redirect_to first_document_path, notice:  "The document #{@first_document.name} has been deleted."
   end
   
   private
      def document_params
      params.require(:document).permit(:name, :attachment)
   end

end


