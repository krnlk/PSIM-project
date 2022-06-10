class Track < ApplicationRecord
    #def change
        has_many :malfunctions
        has_one :reservation
    #end
end
