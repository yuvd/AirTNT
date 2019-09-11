class PagesController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :authenticate_user!, only: [:index, :new]

  def index
    @units = policy_scope(Unit)
  end
end
