class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false
      t.references :training_session, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :customer_id, primary_key: :id
  end
end
