require './enumerable'

class MyList
	include MyEnumerable

	def initialize(*args)
		@list = args
	end
	# each method
end

list = MyList.new(1, 2, 3, 4, 5)
puts list.all? { |x| x > 0 } 
puts list.any? { |x| x > 4 } 
puts list.filter { |x| x > 2 }
