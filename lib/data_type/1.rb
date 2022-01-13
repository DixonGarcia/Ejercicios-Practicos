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

worker = Worker.new

puts 'Whats is your salary per hour?'
worker.salary_per_hour = gets.to_i

puts 'How many hours you worked?'
worker.hours_worked = gets.to_i

puts "Your payment is: #{worker.payment}"
