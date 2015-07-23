def reverser(&block)
    (yield.split(' ').each do |word|
        word.reverse! 
    end).join(' ')
end

def adder(num = 1)
    yield + num
end

def repeater(times = 1)
    times.times {yield}
end