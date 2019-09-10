class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).geocoded
    @markers = @bookings.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude
      }
    end
  end

  def create
    @unit = Unit.find(params[:unit_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.unit = @unit
    authorize @booking
    @booking.save
    if @booking.valid?
      redirect_to bookings_path
    else
      render :new
    end
  end

  def new
     @booking = Booking.new
     authorize @booking
  end

  def edit
  end

  def update
  end

  def destroy
    skip_authorization
    @booking = Booking.find(params[:id])
    if @booking.destroy!
      redirect_to bookings_path
    else
      flash[:alert] = 'problem in controller'
    end
  end

  def booking_params
    params.require(:booking).permit(:target_name, :target_address, :start_date, :end_date)
  end
end
