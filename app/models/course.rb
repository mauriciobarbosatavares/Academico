class Course < ActiveRecord::Base
    has_many :registrations
    
    def to_s
      "#{self.name} (#{self.duration} horas)"
    end
end
