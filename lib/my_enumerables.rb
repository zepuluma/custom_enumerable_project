module Enumerable
  # Your code goes here
  

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each(&block)

    results = []

    for i in 0..self.length-1
      results << self[i]
      block.call(self[i])
    end

    return results

  end
end

#input
#array.my_each do |element|
#  my_each_results << element * 2
#end