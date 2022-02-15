class SubRequest < ApplicationRecord
  belongs_to :commitment
  belongs_to :user, optional: true

  def fulfilled?
    :user.present?
  end
end
