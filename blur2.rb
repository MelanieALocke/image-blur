class Image
  def initialize (image)
    @image = image
  end

  def output_image
    @image.each do |child_arr| 
      puts child_arr.join
    end
  end

  def blur
    blurred = Marshal.load( Marshal.dump(@image) )
    blurred.each_index do |row|
      blurred[row].each_index do |pixel|
        if blurred[row][pixel] == 1
          if pixel != 0
            @image[row][pixel-1] = 1 #left
          end
          if row != 0
            @image[row-1][pixel] = 1 #up
          end
          if pixel != blurred[row].length-1
            @image[row][pixel+1] = 1 #right
          end
          if row != blurred.length-1
            @image[row+1][pixel] = 1  #down
          end
        end
      end
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
puts "--"
image.blur
image.output_image
