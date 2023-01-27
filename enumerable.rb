require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each()
    (0...@list.length).each do |n|
      yield(@list[n])
    end
  end
end