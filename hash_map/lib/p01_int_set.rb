
class MaxIntSet
  attr_accessor :store
  
  def initialize(max)
    @max = max
    @store = Array.new(max)
  end

  def insert(num)
    raise "Out of bounds" if num > @max || num < 0     #false

    @store.each do |element|
      @store[num] = true
    end
  
  end

  def remove(num)
    @store[num] = false

  end

  def include?(num)
    return true unless self[num].nil?
    false
  end

  private
  def is_valid?(num)
    return true if num.is_a?(Integer) &&  num < @max
    false
  end

  # def validate!(num)

  # end
end


class IntSet
  attr_accessor :store

  def initialize(number_of_buckets = 20)
    @store = Array.new(number_of_buckets) { Array.new }
  end

  def insert(num)
    current_bucket = (num % number_of_buckets)
    @store[current_bucket] << num unless self[num]
  end

  def remove(num)
    @store.each do ||[num].delete

  end

  def include?(num)
    self[num]
  end

  private

  def [](num)
    @store[num % number_of_buckets]
  end

  def number_of_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end