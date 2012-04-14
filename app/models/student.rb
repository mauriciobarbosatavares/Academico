class Student < ActiveRecord::Base
    has_many :registrations, :as => :registrable
    
    def to_s
      "#{self.name} <#{self.email}>"
    end
end
