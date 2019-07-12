class Stack
    attr_accessor :ivar
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def push(el)
      # adds an element to the stack
      self.ivar << el
    end

    def pop
      # removes one element from the stack
        ivar_length = self.ivar.length
        self.ivar.select! do |ele| 
            unless self.ivar.index(ele) == (ivar_length - 1)
                ele
            end
        end
        self.ivar
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      self.ivar[-1]
    end
  end

  class Queue
    attr_accessor :the_queue
    def initialize
      @the_queue = []
    end

    def enqueue(el)
      # adds an element to the q
      self.the_queue << el
    end

    def dequeue
      # removes one element from the beginning of the q
        self.the_queue.select! do |ele| 
            unless self.the_queue.index(ele) == 0
                ele
            end
        end
        self.the_queue
    end

    def peek
      # returns, but doesn't remove, the first element in the stack
      self.the_queue[0]
    end
  end

  class Map
    attr_accessor :the_map
    def initialize
        @the_map = [] 
    end

    def set(key, value)
      # adds an key and value to the map
     if self.the_map.empty?
        self.the_map << [key, value]
     else
      self.the_map.each do |key_v_pair|
        if key_v_pair[0] == key
            key_v_pair[1] = value
            return [key_v_pair[0],key_v_pair[1]]
         else
           return self.the_map << [key, value]
         end
      end
     end
    end

    def get(key)
        self.the_map.each do |key_v_pair|
            if key_v_pair[0] == key
                return key_v_pair[1] 
            end
        end
        nil
    end

    def delete(key)
      # removes key value pair from the map
        self.the_map.select! do |key_v_pair|
            unless key_v_pair[0] == key
                key_v_pair
            end
        end
        self.the_map
    end

    def show
      # returns, but doesn't remove, the first element in the stack
      self.the_map[0]
    end
  end