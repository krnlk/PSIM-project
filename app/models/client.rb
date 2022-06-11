class Client < ApplicationRecord
    #def change
        #has_one :user_datum
        belongs_to :user_datum
        has_many :reservations
        
        #validates :personals_id, presence: true
    #end
end
