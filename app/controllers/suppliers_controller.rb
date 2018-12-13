class SuppliersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  def index
    @suppliers = Supplier.all
    @suppliers = Supplier.search(params[:search].to_param) unless params[:search].blank?
  end

  def new
    @supplierinfo = Supplier.new
  end

  def create
    #render plain: params[:supplierinfo].inspect
    @supplierinfo = Supplier.new(supplier_params)

    if(@supplierinfo.save)
      redirect_to @supplierinfo
    else
      render 'new'
    end

  end

  def show
    @supplierinfo = Supplier.find(params[:id])
  end

  def edit
    @supplierinfo = Supplier.find(params[:id])
  end

  def update
    @supplierinfo = Supplier.find(params[:id])

    if(@supplierinfo.update(product_params))
      redirect_to @supplierinfo
    else
      render 'edit'
    end
  end

  def destroy
    @supplierinfo = Supplier.find(params[:id])
    @supplierinfo.destroy

    redirect_to suppliers_path
  end

  private def supplier_params
    params.require(:supplierinfo).permit(:Lieferantennummer, :Name, :Adresse, :Telefonnummer, :Email)
  end
end
