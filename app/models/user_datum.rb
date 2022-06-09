class UserDatum < ApplicationRecord
    has_one :client
    has_one :employee
end
