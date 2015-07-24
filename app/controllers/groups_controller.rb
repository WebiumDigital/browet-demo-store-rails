class GroupsController < ApplicationController

  def index
    @groups = Browet::Group.list
  end

end