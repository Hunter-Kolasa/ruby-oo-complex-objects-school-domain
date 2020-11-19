class School
    attr_accessor :roster, :student_name, :school_name
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end
    def add_student(student_name, grade)
        if @roster.key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        sorted_roster = {}
        @roster.keys.sort.each do |key|
            sorted_roster[key] = []
            sorted_roster[key] << @roster[key].flatten.sort
        end
        sorted_roster.keys.each do |key|
            sorted_roster[key].flatten!
        end
        sorted_roster
    end
end
