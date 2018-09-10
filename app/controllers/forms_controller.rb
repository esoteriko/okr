class FormsController < ApplicationController
    def index
        @objective = Objective.all

    end
    def new
        @objective = Objective.new

    end
    def create
        #@user = User.find(params[:user_id])
        #@objective = @user.objectives.create(objective_params)
        #redirect_to users_path(@user)
        @objective = Objective.new(objective_params)
        if @objective.save
            redirect_to @objective
        else
        render 'new'
        #if @objective.save
         #   flash[:succes] = "Objective was created"
          # redirect_to @objective
        #else
         #  render 'new'
        end

    end
    def show
        @objective = Objective.find[:id]
    end


    def objective_params
    params.require(:objective).permit(:description,:period_value,:time_id)
    end


end
