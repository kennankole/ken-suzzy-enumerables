module MyEnumerable
  def all?
    (0...@list.length).each do |i|
      return false unless yield(@list[i])
    end
    true
  end

  def any?
    (0...@list.length).each do |i|
      return true if yield(@list[i])
    end
    false
  end

  def filter
    results = []
    (0...@list.length).each do |i|
      results.push(@list[i]) if yield(@list[i])
    end
    results
  end
end

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
