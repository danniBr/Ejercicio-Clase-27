class ProductsController < ApplicationController
  def create
  	@category = Category.find(params[:category_id])
    @product = @category.products.build(product_params)
    @product.save
    redirect_to category_path(@product.category_id)
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end 
end
