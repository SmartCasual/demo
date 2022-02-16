#!/usr/bin/env ruby

class Testing
  def self.test(weight, ...)
    puts weight
    new.test(...)
  end

  def test(age, first_name:, second_name:)
    puts age
    yield "Age: #{age}" if block_given?
    puts "#{first_name}-#{second_name}"
  end
end

Testing.test(12, 100, first_name: "a", second_name: "b") do |thing|
  puts thing
end
