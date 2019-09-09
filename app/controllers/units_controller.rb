class UnitsController < ApplicationController
  #before_action :authenticate_user!
  #skip_before_action :authenticate_user!, only: :index, :new

  def index
    @units = Unit.all
    @units = policy_scope(Unit)
  end

  def show
    @unit = Unit.find(params[:id])
    @booking = Booking.new
    authorize @unit
  end

  def new
    @unit = Unit.new
    @booking = Booking.new
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.user = current_user
    if @unit.valid?
      @unit.save
      redirect_to '/'
    else
      render :new
    end
  end

  def unit_params
    params.require(:unit).permit(:name, :user, :photo, :category, :description)
  end
end
