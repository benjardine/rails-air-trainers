class AddCoordinatesToTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :training_sessions, :latitude, :float
    add_column :training_sessions, :longitude, :float
  end
end
