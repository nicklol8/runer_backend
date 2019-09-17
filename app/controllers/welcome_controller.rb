class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message: 'donutdash leaderboard'}
    end
end
