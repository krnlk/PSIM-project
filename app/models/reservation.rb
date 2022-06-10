class Reservation < ApplicationRecord
    #def change
        belongs_to :shoe
        belongs_to :track
        belongs_to :price_list
        belongs_to :client
    #end
end
