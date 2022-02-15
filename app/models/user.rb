class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :lockable

  has_many :registrations
  has_many :parishes, through: :registrations

  has_many :commitments
  has_many :time_slots, through: :commitments

  has_many :sub_requests
end
