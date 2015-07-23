def add(x,y)
    x + y
end
def subtract(x,y)
    x - y 
end
def sum(array)
    total = 0
    if (array.length > 0)
        array.each {|num|total = total + num }
#        puts total
    else
        return 0
    end
    total
end
#sum([7])
def multiply(array)
    total = 1
    if (array.length > 0)
        array.each {|num|total = total * num }
#        puts total
    else
        return 0
    end
    total
end
#puts multiply([2,3])
def power(x, y)
    x**y 
end

def factorial(num)
    total = 1
    if (num == 0)
        return 1
    else
        while (num > 0)
            total = total*num
            num = num - 1
        end
    end
    total
end
puts factorial(5)
puts factorial(10)






