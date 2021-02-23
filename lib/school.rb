require 'pry'
class School
    def initialize(name)
      @name = name
      @roster = {}
    end

    def roster
        @roster
    end 

    def add_student (name, grade_num)
        roster[grade_num] ||= []
        roster[grade_num] << name
    end     

    def grade(grade_num)    
        roster[grade_num]
    end    
    
    def sort
        @roster.sort.to_h.each_pair{|grade_num, list| list.sort!}
    end

end
