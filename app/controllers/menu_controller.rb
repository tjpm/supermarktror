class MenuController < ApplicationController
  def index

  end

  def new

  end

  def create
    render plain: params[:stuff].inspect
  end

  def show

  end
end
