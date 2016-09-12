class Array

  def bubble_sort
    ary = self.dup
    loop do
      swapped = false
      (ary.size-1).times do |i|
        if ary[i] > ary[i+1]
          ary[i+1], ary[i] = ary[i], ary[i+1]
          swapped = true
        end
      end
      break unless swapped
    end
    ary
  end

end