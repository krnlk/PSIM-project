class Reservation < ApplicationRecord
    belongs_to :shoe
    belongs_to :track
    belongs_to :price_list
    belongs_to :client

end
