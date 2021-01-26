class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        @backs = []
        ProjectBacker.all.each do |back_proj|
            if back_proj.project == self
                @backs.push(back_proj.backer)
            end
        end
        @backs
    end
end