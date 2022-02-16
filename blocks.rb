def map(array)
  raise "No block given" unless block_given?

  new_array = []
  array.each do |entry|
    new_array << yield(entry)
  end

  return new_array
end


array = [1,2,3]

puts array

array2 = map(array) do |number|
  number * 10
end

puts array2
