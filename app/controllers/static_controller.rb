class StaticController < ApplicationController

    def index
        render layout: "static_landing"
    end
end
