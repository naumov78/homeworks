class LRUCache

    def initialize(n)
      @size = n
      @cash = []
    end

    def add(el)
      if cash.invlude?(el)
        @cash.delete(el)
        @cash << el
      elsif count >= size
        @cash.shift
        @cash << el
      else
        @cash << el
      end
    end

    def count
      @cash.count
    end

    def show
      p @cash
    end

  end
