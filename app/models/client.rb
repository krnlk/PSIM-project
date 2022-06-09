class Client < ApplicationRecord
    belongs_to :User_Datum
    has_one :reservation
end
