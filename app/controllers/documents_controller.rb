class DocumentsController < ApplicationController 
  def new
    @document = Document.new
  end

  def create
    document = current_user.documents.create(document_params)
    redirect_to document_path(document)
  end

  def show
    @document = Document.find(params[:id])
  end

  def edit 
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
      redirect_to document_path(@document)
    else
      render 'edit'
    end
  end


  private

  def document_params
    params.require(:document).permit(:employer, :employee, :company_name, :postal_code, :address, :job_detail, :start_date, :end_date, :salary)
  end

end
