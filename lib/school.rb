# code here!
class School

    attr_reader
    attr_writer
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if (self.roster[grade])
            self.roster[grade] << name
        else
            self.roster[grade] = [name]
        end
    end

    def grade(level) 
        @roster[level]
    end

    def sort()
        self.roster.each do |k, v| 
            v.sort!()
        end
    end

end
