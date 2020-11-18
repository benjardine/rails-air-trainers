class TrainingSessionsController < ApplicationController
  def index
    @sessions = TrainingSession.all
  end

  def new
    @session = TrainingSession.new
  end

  def create
   @session = TrainingSession.new(strong_params)
   @session.trainer = current_user
   if  @session.save!
      redirect_to training_sessions_path(@session.id)
    else
      render :new
    end
  end

  private 

  def set_training_session
    @training_session = TrainingSession.find(params[:id])
  end

  def strong_params
    params.require(:training_session).permit(:category,:description, :cost, :start_time, :end_time)
  end
end
