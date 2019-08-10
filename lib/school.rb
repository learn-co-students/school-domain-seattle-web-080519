require "pry"


class School
    attr_reader :name, :st_name
    attr_accessor :roster, :st_grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(st_name, st_grade)
        if roster[st_grade]
            roster[st_grade] << st_name
        else
            roster[st_grade] = [st_name]
        end
    end

    def grade(st_grade)
        roster[st_grade]
    end

    def sort
        # @roster.map do |st_grade, st_name|
        #     st_name.sort!
        # end
        # @roster
        
        
        
        sorted_roster = {}
        sg = 0  # sg = st_grade value

        while sg < 13
            if self.roster[sg]
                sorted_roster[sg] = self.roster[sg].sort
            end
            sg += 1
        end
        return sorted_roster
    end
    


        

        # sorted_roster[7] = roster[7].sort
        #     # roster[9].sort
        #     # roster[10].sort
            
        # # end
        
    # end

        # roster.values.sort
        # .to_h

# h.sort.to_h


        # roster.sort_by { |st_grade, st_name| st_name }.to_h
        
      


            # binding.pry
            # return roster


            #Currently, I'm returning an array, but it wants a hash that is ordered with keys by grade level

            #pass each grade level into a hash with each student list ordered alphabetically

end

# wayside = School.new(wayside)

# wayside.add_student("Homer Simpson", 9)
# wayside.add_student("Bart Simpson", 9)
# wayside.add_student("Avi Flombaum", 10)
# wayside.add_student("Jeff Baird", 10)
# wayside.add_student("Blake Johnson", 7)
# wayside.add_student("Jack Bauer", 7)


    
# roster = {
#     9=>["Homer Simpson", "Bart Simpson"],
#     10=>["Avi Flombaum", "Jeff Baird"],
#     7=>["Blake Johnson", "Jack Bauer"]
# }

# p wayside.sort

# binding.pry
# 0

# roster = {
#     7=>["Blake Johnson", "Jack Bauer"]
#     9=>["Bart Simpson", "Homer Simpson"],
#     10=>["Avi Flombaum", "Jeff Baird"]
# }
