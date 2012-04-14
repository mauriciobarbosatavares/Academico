class Teacher < ActiveRecord::Base
    has_many :registrations, :as => :registrable
end
