#!/usr/bin/env ruby

class Testing
  # def some_method
  #   puts __FILE__
  # end
end

Testing.class_eval <<-RUBY, __FILE__, __LINE__ + 1a
  def some_method
    raise 'hi'
  end
RUBY

Testing.new.some_method
