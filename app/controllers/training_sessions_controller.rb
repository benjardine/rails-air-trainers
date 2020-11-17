class TrainingSessionsController < ApplicationController
  def index
    @sessions = TrainingSession.all
  end
end
