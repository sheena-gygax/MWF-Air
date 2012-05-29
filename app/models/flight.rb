class Flight < ActiveRecord::Base
  attr_accessible :arrival_code, :depart_code, :depart_time, :distance, :flight_number

  before_save :calculate_distance

  def calculate_distance
     self.distance = (MileageCalculator.new(self.depart_code, self.arrival_code)).miles
  end
end