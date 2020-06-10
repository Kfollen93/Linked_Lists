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

    def append(node)
        node = Node.new(node)
        if @head == nil
            @head = node
        else
            @tail.next_node = node
        end
            @tail = node
            @size += 1
    end

    def prepend(node)
        node = Node.new(node)
        if @head == nil
            @head = node
        else
            @head = current_node
            current_node = @head.next_node
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
        puts "The current list head is: #{@tail.value}"
    end

    def at(index)
        
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
alpha.append('A')
alpha.append('B')
alpha.append('C')
alpha.append('D')


alpha.to_s
alpha.size
alpha.head
alpha.tail

