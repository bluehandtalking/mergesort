require 'spec_helper'

describe "implementation of the famous and fast merge sort algorithm" do
	include MergeSort
	it "takes an array and sorts it by using a recursive method" do
	   sort_me = [21,323,4,68,912,64,34,553,941,34,33,82,5129,18,34,33] 
	   results = mergesort(sort_me)
	   results.each {|i| puts i}
	end
end

