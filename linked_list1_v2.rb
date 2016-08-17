class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
      @data = LLNode.new(value, @data)
    end

    # Pop an item off the stack.  
    def pop
        value2Return = nil
        if @data == nil
          puts "Stack is empty" 
        else
          value2Return = @data.value
          @data = @data.next_node
        end
        value2Return
    end


    def putsStack
      print "{"
      putsNodes(@data)
      print "}"
      puts""
    end

    def putsNodes(link)
      if link != nil
        print link.value 
        print "," if link.next_node !=nil
        putsNodes(link.next_node) if link.next_node != nil
      end
    end

    def reverse
      r_data = nil  
      r_data = reverse_guy(r_data) 
      @data = r_data
    end

    def reverse_guy(new_list)
      if @data !=nil
        new_list = LLNode.new(self.pop, new_list)
        new_list = reverse_guy(new_list) if @data != nil
      end
      new_list
    end

end

class LLNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    #puts "Creating a Node for #{value}"
    @value = value
    @next_node = next_node
  end

end

# test the stack

myStack = Stack.new

20.times do
  myStack.push(Random.rand(10...420))
  puts myStack.putsStack
end

22.times do
  myStack.pop
  puts myStack.putsStack
end

(1..10).each do |i|
  myStack.push(i)
  puts myStack.putsStack
end

(1..5).each do |i|
  puts "Now Reversing try: #{i}"
  myStack.reverse
  puts myStack.putsStack
end