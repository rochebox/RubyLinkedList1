class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    def see_top
        if data != nil
          puts "There is something on this list"
         return data.get_node_value
        else
            puts "I can't see anything on this list"
            return nil
        end

    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        newNode = LLNode.new(value)
        puts "just created a node with data #{newNode.get_node_value}"
        newNode.set_next(data)
        data = newNode

        puts "Added a node to the top of the stack with value #{data.get_node_value}"

    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
    end

end

class LLNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def set_next(new_next_node)
    next_node = new_next_node
  end

  def get_node_value
    return value
  end

end


myStack = Stack.new
myStack.push(35)
myStack.push(24)
myStack.push(13)
myStack.push(2)

puts "At the end stack first value is #{myStack.see_top}"


