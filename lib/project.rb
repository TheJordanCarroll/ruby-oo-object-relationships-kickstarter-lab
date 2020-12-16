class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def find_prba
        ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
    end

    def backers
        find_prba.map{|find_prba| find_prba.backer}
    end

end