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