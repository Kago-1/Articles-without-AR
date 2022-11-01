require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
auth1 = Author.new("Author1")
auth2 = Author.new("Author2")
mag1 = Magazine.new(name:"Mag1",category:"Cat1")
mag2 = Magazine.new(name:"Mag2",category:"Cat1")
mag3 = Magazine.new(name:"Mag3",category:"Cat2")
art1 = Article.new(author:auth1,magazine:mag1,title:"Title1")
art2 = Article.new(author:auth1,magazine:mag1,title:"Title2")
auth1.add_article(mag1,"Title3")
auth1.add_article(mag2,"Title4")
auth1.add_article(mag3,"Title5")

# puts mag1.contributors


### DO NOT REMOVE THIS
binding.pry

0
