class ProductsController < ApplicationController
  before_action :authorize_user

  def index
    @brands = Product.pluck(:brand)
    if params[:search].present?
      @products = Product.where("name LIKE ? OR brand LIKE ?", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%")
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
