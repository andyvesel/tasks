def max_pairwise_product(length, array)
	return 'Invalid data' if length != array.length

	n1 = array.sort.last
	n2 = array.sort[-2]

	return result = n1 * n2
end

length = gets.to_i
array = gets.split('').map(&:to_i)

puts max_pairwise_product(length, array)
				