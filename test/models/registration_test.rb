require "test_helper"

class RegistrationTest < ActiveSupport::TestCase
  test 'user may not be admin and not registered' do
    refute Registration.new(user: users(:one), parish: parishes(:one), admin: true, registered: false).save
    assert Registration.new(user: users(:one), parish: parishes(:one), admin: true, registered: true).save
  end
end
