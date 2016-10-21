class Stack

  attr_accessor :stack

    def initialize
      @stack_list = []
    end

    def add(el)
      @stack_list << el
    end

    def remove
      @stack_list.pop
    end

    def show
      p @stack_list
    end
end




class Queue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    p queue
  end

end



class Map

  attr_accessor :my_map

  def initialize
    @my_map = []
  end

  def assign(key, val)
    subs = false
    @my_map.each_with_index do |pair, idx|
      if pair[0] == key
        pair[1] = val
        subs = true
      end
    end
  @my_map << [key, val] unless subs
  end

  def lookup(key)
    @my_map.each_with_index do |pair, idx|
      return  p @my_map[idx] if pair[0] == key
    end
    p []
  end

  def remove(key)
    @my_map.each_with_index do |pair, idx|
      @my_map.delete_at(idx) if pair[0] == key
    end
  end

  def show
    p @my_map
  end
end



################# Test cases ###########

puts "Test cases for Class class"

s = Stack.new
s.add(4)
s.show
s.add(5)
s.show
s.remove
s.show

puts "Test cases for Queue class"

q = Queue.new
q.enqueue(4)
q.show
q.enqueue(5)
q.show
q.dequeue
q.show

puts "Test cases for Map class"

m = Map.new
m.show
m.assign("q", 12)
m.show
m.assign("e", 15)
m.show
m.lookup("q")
m.remove("e")
m.show
