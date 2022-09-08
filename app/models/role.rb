class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.audition.actor
    end
    def actors
        self.audition.location
    end
    def lead
        currhire = self.audition.where("hired: true").first
        if currhire
            currhire
        else
            "No actor has been hired"
        end
    end

    def understudy
        currunder = self.audition.where("hired: true").second
        if currunder
            currunder
        else
            'no actor has been hired for understudy for this role'
        end
    end
end