class Book
    def initialize(title=nil)
        @title = title
    end
    def title=(new_title)
        little = ['and', 'but', 'or', 'the', 'over', 'a', 'an','in', 'of']

        new_title = new_title.split.each do |word|
            word.capitalize! unless little.include?(word) 
        end
        new_title[0].capitalize!
        @title = new_title.join(' ')
         
    end
    def title
        @title
    end
    
    
    
end