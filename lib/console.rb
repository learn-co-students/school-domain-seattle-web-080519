require 'pry'
require './school.rb'

vector = School.new("Vector")
azCompass = School.new("AZ Compass")

vector.add_student("Joe", 2)
vector.add_student("Joel", 2)
vector.add_student("Amy", 2)
vector.add_student("Nael", 4)
vector.add_student("Cat", 5)
vector.add_student("Zoey", 4)
vector.add_student("Chris", 4)
vector.add_student("Kate", 4)

binding.pry
0