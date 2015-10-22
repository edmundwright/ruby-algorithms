# UNFINISHED

class LinkItem
  attr_accessor :next
  attr_reader :value

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize(initial_elements = [])
    @first_item = nil
    initial_elements.each { |el| push(el) }
  end

  def push(new_element)
    if @first_item
      current_item = @first_item

      until current_item.next.nil?
        current_item = current_item.next
      end

      current_item.next = LinkItem.new(new_element)
    else
      @first_item = LinkItem.new(new_element)
    end
  end

  def [](index)
    current_item = @first_item

    index.times do
      return nil if current_item.nil?
      current_item = current_item.next
    end

    current_item.nil? ? nil : current_item.value
  end
end
