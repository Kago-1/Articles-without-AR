# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_reader :name
  
  
    def initialize(name)
      @name = name
    
    end
  #filter from all articles; articles that that have article.author == self.name
    def articles
      Article.all.select{|article|
    article.author == @name}
    end
  
   #get magazines instances from articles
    def magazines
    articles.map{|article|
    article.magazine}.uniq
    end
  
    def add_article(magazine,title)
      Article.new(author:self,magazine:magazine,title:title)
    end
  
    def topic_areas
      magazines.map{|magazine|
      magazine.category}.uniq
    end
  
  
  end

  class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name:, category:)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def get_articles
      Article.all.select{|article|
    article.magazine.name == @name}
    end
  
    def contributors
      get_articles.map{|article|article.author}.uniq
    end
  
    def self.find_by_name(name)
      Magazine.all.find{|magazine|
      magazine.name == name}
    end
  
    def article_titles
      get_articles.map{|article|article.title}
    end
  
   def contributing_authors
    main_authors = []
    get_articles.map{|article|article.author}.tally.each{|key,value|value > 2 && (main_authors << key)}
    main_authors
   end
  
  end
   
  class Article

    attr_reader :magazine, :title
    @@all = []
    def initialize (author:, magazine:, title:)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def author
        @author.name
    end
    
    end
      