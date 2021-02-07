class Stack
    def initialize
        @underlying_array = []
    end

    def push(elem)
        underlying_array.push(elem)
    end

    def pop
        underlying_array.pop
    end

    def peek
        underlying_array[-1]
    end

    attr_reader :underlying_array
end 

stack = Stack.new 
stack.push("Jamie")
stack.push("Holly")
stack.push("Ashley")
p stack.peek
p stack.pop
p stack.peek


class Queue
    def initialize
        @underlying_array2 = []
    end

    def enqueue(elem)
        @underlying_array2 << elem
    end

    def dequeue
        @underlying_array2.shift
    end

    def peek
        @underlying_array2.last
    end

    attr_reader :underlying_array
end
puts
queue = Queue.new
queue.enqueue("Pops")
queue.enqueue("Raisin Bran")
queue.enqueue("Smacks")
queue.enqueue("Capn")
p queue.peek
p queue.dequeue
p queue.dequeue
p queue.dequeue
p queue.dequeue
p queue.peek


class Map
    def initialize
        @underlying_array = []
    end

    def set(key, val)
        found = false
        @underlying_array.each do |elem|
            if elem[0] == key
                @underlying_array[key] = val
                found = true
            end
        end
        if !found
            @underlying_array << [key, val]
        end
    end

    def get(key)
        @underlying_array.each do |pair|
            return pair[1] if pair[0] == key
        end
    end

    def delete(key)
        @underlying_array.each_with_index do |pair, i|
            if pair[0] == key
                @underlying_array.delete_at(i)
            end
        end
    end

    def show
        puts "Key value pairs shown below"
        @underlying_array.each_with_index do |pair, i|
            p "#{i+1}. #{pair[0]}: #{pair[1]}"
       
        end
    end
end
puts
map = Map.new
map.set("Name", "Rigo")

p map.get("Name")
map.set("Occupation", "Texas Ranger")
map.set("Age", "31")
map.set("Height", "6\"4'")
map.set("Weight", "225")
map.show
p map.get("Age")
map.delete("Age")
map.delete("Weight")
p map.get("Age")
p map.get("Weight")
p map.get("Occupation")
map.delete("Occupation")
p map.get("Occupation")