class LRUCache
    require "byebug"
    attr_reader :cache, :num
    def initialize(num)
        @num = num
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      return nil if @cache.size == 0
        count = 0
        @cache.each do |el|
            if el != nil
                count += 1
            end
        end
        return count
    end

    def add(el)
      # adds element to cache according to LRU principle
      #debugger
      if @cache.include?(el)
        @cache.delete(el)
      end

      @cache = @cache + [el]
      
      if count > @num
        @cache.shift
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      return @cache
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)
 

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

  p johnny_cache.show