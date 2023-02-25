class Triangle
  # write code here
  attr_reader :arr

  def initialize(a, b, c)
    @arr = [a, b, c]
  end

  def is_valid_triangle arr
    if arr[0] > 0 && arr[1] > 0 && arr[2] > 0
      sorted_arr = arr.sort
      greatest_side = sorted_arr.pop
      greatest_side < sorted_arr.sum
    else
      false
    end
  end


  def kind 
     if is_valid_triangle(@arr)
      if arr.uniq.length == 3
        :scalene
      elsif arr.uniq.length == 2
        :isosceles
      else arr.uniq.length == 1
        :equilateral
      end
    else
      raise TriangleError
   end
  end
  
  
  class TriangleError < StandardError
    'This is not a valid triangle'
  end
end
