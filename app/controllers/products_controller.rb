class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def index
    @products = Product.all
  end

  def new

  end

  def create
    #render plain: params[:stuff].inspect
    @stuff = Product.new(product_params)

    @stuff.save
    redirect_to @stuff
  end

  def show
    @stuff = Product.find(params[:id])
  end

  private def product_params
    params.require(:stuff).permit(:Artikelnummer, :Bezeichnung, :Preis, :EK, :Bestand, :Bestellt, :Marke, :Lieferant)
  end
end
