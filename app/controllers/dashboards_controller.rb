class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def profile
    authorize :dashboard, :profile?
    @units = current_user.units
  end

  def units
    authorize :dashboard, :units?
    @units = current_user.units
  end

end
