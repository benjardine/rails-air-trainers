class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, :class_name => "Booking", :foreign_key => "customer_id"
  has_many :training_sessions, :class_name => "TrainingSession", :foreign_key => "trainer_id"
  has_one_attached :avatar
end
