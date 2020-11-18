class AddAddressToTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :training_sessions, :address, :string
  end
end
