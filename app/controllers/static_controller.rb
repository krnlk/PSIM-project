class StaticController < ApplicationController
    def index
        @some_variable = 123
        @clients = Client.all

    end
end
