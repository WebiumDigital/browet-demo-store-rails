class GroupsController < ApplicationController

  def index
    @groups = Browet::CategoryGroup.all
  end

end