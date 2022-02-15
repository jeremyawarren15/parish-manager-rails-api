class Parish < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, presence: true

  has_many :parishes

  has_many :registrations
  has_many :users, through: :registrations
end
