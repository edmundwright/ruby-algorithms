class HashSet
  def initialize
    @buckets = Array.new(8) { [] }
    @num_elements = 0
  end

  def size
    @num_elements
  end

  def include?(el)
    bucket_for_el(el).include?(el)
  end

  def insert(new_el)
    return false if include?(new_el)
    bucket_for_el(new_el) << new_el

    @num_elements += 1
    resize! if @num_elements == @buckets.length

    true
  end

  def delete(el)
    return false unless include?(el)
    bucket_for_el(el).delete(el)
    @num_elements -= 1

    true
  end

  private

  def bucket_for_el(el)
    @buckets[el.hash % @buckets.length]
  end

  def resize!
    old_buckets = @buckets

    @buckets = Array.new(old_buckets.length * 2) { [] }
    @num_elements = 0

    old_buckets.each do |bucket|
      bucket.each { |el| insert(el) }
    end
  end
end

# Possible `#hash` implementations
# Note `^` is the bitwise XOR (exclusive OR) operator

class Array
  def hash
    result = 0
    each { |el| result ^= el.hash }
    result
  end
end

class String
  def hash
    result = 0
    each_char { |char| result ^= char.ord.hash }
    result
  end
end

class Hash
  def hash
    to_a.hash
  end
end
