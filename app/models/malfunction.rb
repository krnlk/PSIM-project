class Malfunction < ApplicationRecord
    def change
        belongs_to :track
    end
end
