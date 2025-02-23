require_relative 'lib/my_enumerables'

array = [1, 1, 2, 3, 5, 8, 13, 21, 34]

my_each_results = []
each_results = []

puts "erster test"

array.my_each do |item|

end


puts "zweiter test"

array.my_each do |element|
  my_each_results << element * 2
end

p my_each_results


#input
#array.my_each do |element|
#  my_each_results << element * 2
#end