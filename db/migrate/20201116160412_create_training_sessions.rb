class CreateTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :training_sessions do |t|
      t.string :category
      t.integer :cost
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :date
      t.references :trainer, null: false

      t.timestamps
    end
    add_foreign_key :training_sessions, :users, column: :trainer_id, primary_key: :id
  end
end
