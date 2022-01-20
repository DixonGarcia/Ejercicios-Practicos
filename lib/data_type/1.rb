#!/usr/bin/ruby
class Worker
  attr_accessor :salary_per_hour, :hours_worked
  def initialize(s=nil, h=nil)
    @salary_per_hour = s
    @hours_worked = h
  end

  def payment
    salary_per_hour * hours_worked
  end
end

