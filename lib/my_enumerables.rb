module Enumerable
  # Your code goes here
  def my_each_with_index(&block)
    for i in 0..self.length-1
      #results << self[i]
      block.call(self[i], i)
    end
  return self
  end

# --------------

def my_select(&block)

  results = []

  self.each do |item|
    if block.call(item) 
    results << item
    end
    #block.call()
  end

  return results

end

# -------------

def my_all?(&block)

  result = true

  self.each do |item|
    if block.call(item) == false 
      result = false
    end
  end

  return result

end

# --------------


def my_any?(&block)

  result = false
  
  self.each do |item|
    if block.call(item)
      result = true
    end

  end

  return result

end


#--------

def my_none?(&block)

  result = true

  self.each do |item|
  
    if block.call(item)
    result = false
    end

  end

  return result

end

# -----------------

def my_count(&block)

  if block_given? == false
  
    self.length

  else

    counter = 0

    self.each do |item|
      if block.call(item)
        counter += 1
      end
    end

    return counter

  end


end



#------------------


def my_map(&block)

  results = []

  self.each do |item|
  results << block.call(item)
  end

  return results

end

#------------------

def my_inject(init, &block)

  result = init

self.each do |item|
  
  result = block.call(result, item)
  
end

return result

end




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