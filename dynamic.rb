require_relative "dynamic/something"

Something.new.hello

class Something
  def hello
    puts "goodbye"
  end
end

Something.new.hello
