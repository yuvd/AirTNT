class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).geocoded.where(user: current_user)
    @markers = @bookings.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude,
        image_url: helpers.asset_url('Target red.png')
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
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to bookings_path
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

  def accept
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.accepted = true;
    @booking.pending = false;
    @booking.save!
    redirect_to unit_path(@booking.unit)
    # respond_to do |format|
    #   # redirect_to unit_path(@booking.unit)
    #   format.js  # <-- will render `app/views/reviews/create.js.erb`
    

  end

  def decline
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.accepted = false;
    @booking.pending = false;
    @booking.save!
    redirect_to unit_path(@booking.unit)
    #for logging/customer support purposes, dont delete the booking
  end

  def booking_params
    params.require(:booking).permit(:target_name, :target_address, :start_date, :end_date)
  end
end
