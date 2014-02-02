module MergeSort
   def mergesort(arr)
     return arr if arr.size <= 1
     mid = arr.size / 2
     left  = arr[0, mid]
     right = arr[mid, arr.size-mid]
     merge(mergesort(left), mergesort(right))
   end
    
   def merge(left, right)
     sorted = []
     until left.empty? or right.empty?
       if left.first <= right.first
	 sorted << left.shift
       else
	 sorted << right.shift
       end
     end
     sorted + left + right
   end
end
