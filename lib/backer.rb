class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def find_pb
        ProjectBacker.all.select{|projectbacker| projectbacker.backer == self}
    end

    def projects
        find_pb.map{|find_pb| find_pb.project}
    end

    def backed_projects
        find_pb.map{|pb| pb.project} 
    end

    # avi_backer.backed_projects => [amaze_project]

end