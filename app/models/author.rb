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
    Article.new(self,magazine,title)
  end

  def topic_areas
    magazines.map{|magazine|
    magazine.category}.uniq
  end


end
