require_relative 'lib/my_enumerables'


enumerable = [1, 1, 2, 3, 5, 8, 13, 21, 34]

puts enumerable.inject(0) {|sum, value| sum + value}


#expect(enumerable.my_select { |value| value > 10 }).to eq([13, 21, 34])