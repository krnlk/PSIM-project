class Track < ApplicationRecord
    has_many :malfunctions
    has_one :reservation
end
