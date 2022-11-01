require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
auth1 = Author.new("Author1")
auth2 = Author.new("Author2")
mag1 = Magazine.new("Mag1","Cat1")
mag2 = Magazine.new("Mag2","Cat1")
mag3 = Magazine.new("Mag3","Cat2")
art1 = Article.new(auth1,mag1,"Title1")
art2 = Article.new(auth1,mag1,"Title2")
auth1.add_article(mag1,"Title3")
auth1.add_article(mag2,"Title4")
auth1.add_article(mag3,"Title5")




### DO NOT REMOVE THIS
binding.pry

0
