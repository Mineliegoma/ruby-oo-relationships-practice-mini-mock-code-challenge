class Book
    attr_accessor :author , :title 
    attr_reader :name
    @@all=[]
   def initialize(title)
        @name= name
        @title= title
        @@all<< self 
    end     
    def self.all
        @@all
    end 
    

end 