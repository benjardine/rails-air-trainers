class TrainingSessionsController < ApplicationController
  before_action :set_training_session, only: [ :update]

  def index
    @t_sessions = TrainingSession.all
    @markers = @t_sessions.geocoded.map do |t_session|
      {
        lat: t_session.latitude,
        lng: t_session.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { t_session: t_session })
      }
    end
  end

  def new
    @t_session = TrainingSession.new
  end

  def create
   @t_session = TrainingSession.new(strong_params)
   @t_session.trainer = current_user
   if  @t_session.save!
      redirect_to training_sessions_path(@t_session.id)
    else
      render :new
    end
  end

  def edit 
  end

  def update
    @t_session.update(strong_params)
    redirect_to training_sessions_path(@t_session.id)
  end

  private 

  def set_training_session
    @t_session = TrainingSession.find(params[:id])
  end

  def strong_params
    params.require(:training_session).permit(:category,:description, :cost, :start_time, :end_time, :address, :photo)
  end
end
