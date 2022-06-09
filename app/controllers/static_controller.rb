class StaticController < ApplicationController
    def index
        @some_variable = 123
        @reservations = Reservation.all
    end
end
