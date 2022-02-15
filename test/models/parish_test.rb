require 'test_helper'

class ParishTest < ActiveSupport::TestCase
  test 'validates presence of name' do
    refute Parish.new(phone_number: '2134123').save
  end

  test 'validates presence of phone_number' do
    refute Parish.new(name: 'Some Parish').save
  end

  test 'parish should save' do
    assert Parish.new(name: 'Some Parish', phone_number: '234234').save
  end
end
