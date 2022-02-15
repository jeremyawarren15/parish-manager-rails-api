class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :parish

  with_options if: :admin do |u|
    u.validates :registered, acceptance: true
  end
end
