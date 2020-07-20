class Author
    attr_accessor :name  , :posts
        def initialize(name)
            @name= name
           #@@all<<self
        end 
        def books
            Post.all.select {|book|book.author == self}
        end 
         def add_book(title)
            book.author = self    #it goes to the song find the artist and associate it to itself. we are writting equal and double equal because we are defining it
         end 
            def write_book(title)
                
              new_book = Book.new(title)  
              #binding.pry

                 add_book(new_book)
            end
            def self.most_word
            Book.all.count 
            end 
        end 