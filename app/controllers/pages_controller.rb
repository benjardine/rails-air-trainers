class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @t_sessions = current_user.training_sessions
  end

end
