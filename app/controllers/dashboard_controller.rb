class DashboardController < ApplicationController
  def index
    binding.pry
    @groups = current_user.groups
  end
end
