# code here!
require 'pry'
class School
    attr_reader :name, :roster
    @@all = []
    def initialize(name)
        @name = name
        @roster = {}
        @@all << self
    end

    def self.all
        @@all
    end

    def add_student(name, grade)
        if roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        # binding.pry
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.map do |grade, names|
            names.sort!
        end
    return self.roster
    end

# bindig.pry
end
