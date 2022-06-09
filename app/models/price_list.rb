class PriceList < ApplicationRecord
    def change
        has_many :reservations
    end
end
