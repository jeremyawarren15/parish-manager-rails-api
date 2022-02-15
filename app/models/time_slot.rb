class TimeSlot < ApplicationRecord
  validates :hour, inclusion: 0..23
  validates :day, inclusion: 0..6

  belongs_to :parish

  has_many :commitments
  has_many :users, through: :commitments

  def day_of_week
    Date::DAYNAMES[day]
  end
end
