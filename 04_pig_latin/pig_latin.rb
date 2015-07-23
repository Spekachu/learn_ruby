
def translate(str)
    words = str.split(" ")
    new_words = []
    words.each do |word|
#        puts word
        new_words << change_word(word)
    end
    puts new_words.join(' ')
    new_words.join(' ')
end

def change_word(word)
#    puts '-'
    vowels = ['a', 'e', 'i', 'o','u']
    ay = 'ay'
    chars = word.split('')
    cap = (chars[0] == chars[0].upcase)
    was_a_q = false
    new_word = ""
    for i in 0..(chars.length-1)
        letter = chars[0]
        if (vowels.include?(letter)) 
            if (was_a_q && letter.downcase == "u")
                chars.insert(chars.length,chars.delete_at(0))
            else
                was_a_q = false
                chars << ay
                break
            end
        else
            if (letter.downcase == 'q')
                was_a_q = true
            end
            chars.insert(chars.length,chars.delete_at(0))
        end
    end
    chars = chars.join.downcase
    if (cap)
        chars.capitalize! 
    end
    chars
end



translate('These three Are quiet words in brown School under qutel')