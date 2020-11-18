class TrainingSession < ApplicationRecord
  # extend TimeSplitter::Accessors
  belongs_to :trainer, :class_name => "User"
  # split_accessor :date, date_format: "%D"
  # split_accessor :start_time
  # split_accessor :end_time
  # split_accessor :start_time, :end_time, time_format: "%I:%M%p"
  validates :category, presence: true
  validates :description, presence: true
  validates :cost, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
