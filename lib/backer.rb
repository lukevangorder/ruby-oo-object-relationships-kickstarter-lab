class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        @proj = []
        ProjectBacker.all.each do |back_proj|
            if back_proj.backer == self
                @proj.push(back_proj.project)
            end
        end
        @proj
    end
end