class Author
    attr_accessor :name 
    @@all=[]
        def initialize(name)
            @name= name
            @@all<<self
        end 
        def self.all
            @@all
        end 

        def books
            Book.all.select{|book| book.author== self}
         
        end 
        def write_book(title, word_count)
         Book.new(self , title, word_count) #self will refers to the owner, p.s we are in the owner class
        end

        def total_words
             self.books.inject(0){|all_words, book| all_words + book.word_count}
         end
         def self.most_words
            self.all.max_by{|author| author.total_words}

         end

end