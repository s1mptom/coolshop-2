class CategoriesController < ApplicationController
  def show
    @categories = Category.find(params[:id])
    @products = @categories.products.paginate(page: params[:page], per_page: 6)
  end
end
