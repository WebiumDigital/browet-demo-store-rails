class ProductsController < ApplicationController

  before_filter :set_group, only: [:index, :show]
  before_filter :set_category, only: [:index, :show]

  def index
    @products = @category.products
  end

  def show
    @product = Browet::Product.get(params[:product_slug])
  end

  def find_products
    @products = Browet::Product.find(params[:query])
    render 'search'
  end

  def search
    @products = []
  end

  private

    def set_category
      @category = Browet::Category.get(params[:category_slug]) if params[:category_slug]
    end

    def set_group
      @group = Browet::Group.get(params[:group_slug]) if params[:group_slug]
    end


end