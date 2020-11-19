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
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :category, :address ],
  associated_against: {
    trainer: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
