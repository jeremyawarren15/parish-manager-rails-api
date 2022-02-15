class Commitment < ApplicationRecord
  belongs_to :user
  belongs_to :time_slot

  has_many :sub_requests
end
