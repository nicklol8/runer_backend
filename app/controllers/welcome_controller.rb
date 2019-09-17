class WelcomeController < ApplicationController
    def index
        render json: {statusL 200, message: 'donutdash leaderboard'}
    end
end
