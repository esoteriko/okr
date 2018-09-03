class FormsController < ApplicationController
    def index
    end
    def new
        @objective = Objective.new
    end
    def create
        @user = User.find(params[:user_id])
        @objective = @user.objectives.create(objective_params)

    end

end
