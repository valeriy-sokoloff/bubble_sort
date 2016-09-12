require_relative 'array'
require 'benchmark'

COUNT = 10000

unsorted_integers = Array.new(COUNT){ Random.rand(10**10) }

puts "Sorting of #{COUNT} integers..."

Benchmark.bm do |x|
  x.report('bubble:') { unsorted_integers.bubble_sort }
  x.report(' qsort:') { unsorted_integers.sort }
end
