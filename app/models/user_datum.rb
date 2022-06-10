class UserDatum < ApplicationRecord
    #def change
      has_one :client
      has_one :employee
    #end
end
