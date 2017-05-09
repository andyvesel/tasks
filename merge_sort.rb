def merge_sort(arr1, arr2)
	i, j = 0, 0
	n, m = arr1.length, arr2.length
	out = []

	while i < n or j < m
		if j == m or (i < n && arr1[i] <= arr2[j])
			out.push(arr1[i])
			i += 1
		else
			out.push(arr2[j])
			j += 1
		end
	end
	p out
end

merge_sort([6,10,12,20,30], [4,5,88])