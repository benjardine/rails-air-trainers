class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
  end

  def create
    @booking = Booking.new
    @booking.training_session_id = params[:training_session_id]
    @booking.customer_id = current_user.id
      if @booking.save
          redirect_to training_session_path(@booking.training_session.id)
      else
          render "training_Session/show"
      end
  end
end
