require './enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end
  # each method
  def each()
    @list.each do |n|
      return n
    end
  end
end
