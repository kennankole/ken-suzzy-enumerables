module MyEnumerable
  def all?
		for i in 0...@list.length
			if !yield(@list[i])
				return false
			end
		end
		return true
	end

	def any?
		for i in 0...@list.length
			if yield(@list[i])
				return true
			end
		end
		return false
	end
	def filter
		results = []
		for i in 0...@list.length
			if yield(@list[i])
				results.push(@list[i])
			end
		end
		return results
	end
end
