class Stack
    attr_accessor :stack
    attr_reader :limit

    def initialize(limit = nil)
        @limit = limit
        @stack = []
    end

    def length
        stack.length
    end

    def push(value)
        return stack[length] = value unless full?
        raise "Stack Overflow"
    end

    def pop
        stack.delete_at(length - 1)
    end

    def peek
        stack[-1]
    end

    def size
        self.length
    end

    def empty?
        length == 0
    end

    def full?
        !!(limit && length >= limit)
    end

    def search(value)
        index = stack.rindex(value)
        return length - index - 1 if index
        -1
    end
end