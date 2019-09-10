# Build a class that takes in info in format of multiple arrays 
# Break nested arrays into individual arrays
# Return each array individually as string -- join method
# Result: Each given array is returned as a set ex- [0, 1, 0, 0,] -> 0100

# Look into join, shuffle, sample, each and collect array methods

class Image
  def initialize (a)
    @a = a
  end

  def output_image
    @a.each do |child_arr| 
      puts child_arr.join
    end
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
