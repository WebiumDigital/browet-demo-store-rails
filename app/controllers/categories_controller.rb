class CategoriesController < ApplicationController

  def index
    @group = Browet::Group.get(params[:group_slug])
    @categories = @group.categories
  end

end