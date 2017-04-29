def insertion_sort(array)
  (1...array.size).each do |index|
    value = array[index]
    j = index-1
    while j >= 0 and array[j] > value do
      array[j+1] = array[j]
      j = j-1
    end
    array[j+1] = value
  end
  p array
end

insertion_sort([7,35,1,80,2,3,4,5])