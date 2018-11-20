class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @stuff = Product.new
  end

  def create
    #render plain: params[:stuff].inspect
    @stuff = Product.new(product_params)

    if(@stuff.save)
    redirect_to @stuff
    else
      render 'new'
    end

  end

  def show
    @stuff = Product.find(params[:id])
  end

  def edit
    @stuff = Product.find(params[:id])
  end

  def update
    @stuff = Product.find(params[:id])

    if(@stuff.update(product_params))
      redirect_to @stuff
    else
      render 'edit'
    end
  end

  def destroy
    @stuff = Product.find(params[:id])
    @stuff.destroy

    redirect_to products_path
  end

  private def product_params
    params.require(:stuff).permit(:Artikelnummer, :Bezeichnung, :Preis, :EK, :Bestand, :Bestellt, :Marke, :Lieferant)
  end
end
