# frozen_string_literal: true

require 'test_helper'

class TimeSlotTest < ActiveSupport::TestCase
  test 'hour is required' do
    refute TimeSlot.new(day: 0, parish: parishes(:one)).save
  end

  test 'day is required' do
    refute TimeSlot.new(hour: 0, parish: parishes(:one)).save
  end

  test 'parish is required' do
    refute TimeSlot.new(day: 0, hour: 0).save
  end

  test 'hour can only be between 0 and 23 inclusive' do
    parish = parishes(:two)
    refute TimeSlot.new(day: 0, hour: -1, parish: parish).save
    refute TimeSlot.new(day: 0, hour: 24, parish: parish).save

    (0..23).each do |hour|
      assert TimeSlot.new(day: 0, hour: hour, parish: parish).save
    end
  end

  test 'day can only be between 0 and 6 inclusive' do
    parish = parishes(:two)
    refute TimeSlot.new(day: -1, hour: 0, parish: parish).save
    refute TimeSlot.new(day: 7, hour: 0, parish: parish).save

    (0..6).each do |day|
      assert TimeSlot.new(day: day, hour: 0, parish: parish).save
    end
  end

  test 'day_of_week will return the correct day' do
    assert_equal time_slots(:one).day_of_week, 'Sunday'
    assert_equal time_slots(:two).day_of_week, 'Monday'
    assert_equal time_slots(:three).day_of_week, 'Tuesday'
    assert_equal time_slots(:four).day_of_week, 'Wednesday'
    assert_equal time_slots(:five).day_of_week, 'Thursday'
    assert_equal time_slots(:six).day_of_week, 'Friday'
    assert_equal time_slots(:seven).day_of_week, 'Saturday'
  end
end
