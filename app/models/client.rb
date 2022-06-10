class Client < ApplicationRecord
    #def change
        belongs_to :User_Datum
        has_one :reservation
        
        validates :personals_id, presence: true
    #end
end
