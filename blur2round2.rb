class Image
  def initialize(a)
    @a = a
  end

  def output_image
    @a.each do |child| 
      puts child.join
    end
  end

  def find_ones
    @indexes = []
    @a.each do |child|
      child.each do |pix|
        if pix == 1
          @indexes << [@a.index(child), child.index(1)]
        end
        puts @indexes.join
      end
    end
  end

  def blur
    @indexes.each do |ones|
      ones.each do |pixel|
        @a[-1][pixel] << 1 #up
        @a[+1][pixel] << 1 #down
        @a[ones][-1] << 1 #left
        @a[ones][+1] << 1 #right
      end
    end
  end
end
#        if pix ==1 && child_index =! 0
#          @a[child_index-1, pix_index] << 1 #up
#        end
#        if pix ==1 && child_index =! 3
#          @a[child_index+1, pix_index] << 1 #down
#        end
#        if pix ==1 && pix_index =! 0
#          @a[child_index, pix_index-1] << 1 #left
#        end
#        if pix == 1 && pix_index =! 3
#          @a[child_index, pix_index+1] << 1 #right
#        else 
#          @a.push(0)

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.find_ones
image.blur
image.output_image