class Thing
    def initialize name, description
        @name = name
        @description = description
    end
end

class Treasure < Thing
    def initialize name, description, value
        super(name, description)
        @value = value
    end
    def get_name
        puts "#{@name}, #{@description}, #{@value}"
    end
end

class Room < Thing
    def initialize name, description, exists
        super(name, description)
        @exists = exists
    end
    def get_name
        puts "#{@name}, #{@description}, #{@exists}"
    end
end

# t = Treasure.new("a", "b", "c")
# t.get_name
# r = Room.new("d", "e", "f")
# r.get_name

# modules and mixins

module A 
    def swim
        print "swimming"
    end
end

module B
    def swim
        print "flying"
    end
end

class MyClass
    def fun
        print "hello2"
    end
end

# ob = A.new
# ob.swim

# overloading with default arguments

class MyClass
    def fun
        print "hello"
    end
    def fun
        print "world"
    end
    def fun(a, b=1, c=2)
        print a, b, c
    end
    def multiple( *arguments)
        arguments.each do |x|
            print x
        end
    end
end

obj = MyClass.new
# obj.fun(2, 3, 4)
obj.multiple(2, 3, 4, 5, 6, 7, 8, 9, 10)