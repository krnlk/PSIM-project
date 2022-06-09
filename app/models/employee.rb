class Employee < ApplicationRecord
    def change
        belongs_to :UserDatum
    end
end
