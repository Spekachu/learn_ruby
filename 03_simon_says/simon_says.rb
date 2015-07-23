def echo str
    str 
end

def shout str
    str.upcase 
end

def repeat(str, rep = 2)
    ([str] * rep).join(" ")
end

def start_of_word(str, num = 0)
    str[0..(num-1)]
end

def first_word(str)
    str.split[0] 
end

def titleize str
    little = ['and', 'but', 'or', 'the', 'over']
#    arr = str.split.each do |word|
#        word.capitalize! unless little.include?(word) 
#    end
#    arr[0].capitalize!
#    str = arr.join(' ')
    
    str = str.split.each do |word|
        word.capitalize! unless little.include?(word) 
    end
    str[0].capitalize!
    str = str.join(' ')
    
end
    
puts titleize('the the over but')