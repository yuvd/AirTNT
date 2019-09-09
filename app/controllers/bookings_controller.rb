class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @unit = Unit.find(params[:unit_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.unit = @unit
    @booking.save
    authorize @booking
    if @booking.valid?
      redirect_to bookings_path
    else
      raise
      render :new
    end
  end

  def new
     @booking = Booking.new
     authorize @booking
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def booking_params
    params.require(:booking).permit(:target_name, :target_address, :start_date, :end_date)
  end
end
