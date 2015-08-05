class CategoriesController < ApplicationController

  def index
    @group = Browet::CategoryGroup.find_by_slug(params[:group_slug])
    @categories = @group.categories
  end

end