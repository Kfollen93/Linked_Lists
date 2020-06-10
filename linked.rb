class Node
attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    attr_accessor :name, :head, :tail, :size
    def initialize
        @head = nil
        @tail = nil
        @size = 0
    end

    def append_node(value)
        node = Node.new(value)
        if @head == nil
            @head = node
        else
            @tail.next_node = node
        end
            @tail = node
            @size += 1
    end

    def prepend_node(value)
        node = Node.new(value)
        if @head == nil
            @head = node
        else
            node.next_node = @head
            @head = node
            @size += 1
        end
    end

    def size
        puts "The current list size is: #{@size}"
    end
    
    def head
        puts "The current list head is: #{@head.value}"
    end

    def tail
        puts "The current list tail is: #{@tail.value}"
    end

    def at(index)
    return nil if index > @size
    node = @head
    index.times do
        node = node.next_node
    end
    puts "The value at index #{index} is: #{node.value}"
    end

    def to_s
        node = @head
        until node.nil?
            print " ( #{node.value} ) ->"
            node = node.next_node
        end
        print " nil\n"
    end

end

alpha = LinkedList.new
alpha.append_node('A')
alpha.append_node('B')
alpha.append_node('C')
alpha.append_node('D')
alpha.prepend_node('Z')

alpha.to_s
alpha.size
alpha.head
alpha.tail
alpha.at(2)