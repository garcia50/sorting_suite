class InsertionSort
  def sort(argue)
    array = []
    until argue.empty? 
      first = argue.shift
      count = 0 
      if array.empty?
        array << first
      else
        array.length.times do |obj|
          if array[obj] > first && count != 1
            count = 1
            array.insert(obj, first)
          elsif obj == (array.length - 1) && count == 0 
            array << first
          end
        end
      end
    end
    array
  end
end
