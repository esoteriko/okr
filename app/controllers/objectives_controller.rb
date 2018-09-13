    class ObjectivesController < ApplicationController
        before_action :set_objective, only: [:show, :edit, :update, :destroy]
          # GET /users
          # GET /users.json
          def index
            @objectives = Objective.all
          end
        
          # GET /users/1
          # GET /users/1.json
          def show
          end
        
          # GET /users/new
          def new
            @objective = Objective.new
            @objective.key_results.build
          end
        
          # GET /users/1/edit
          def edit
          end
        
          # POST /users
          # POST /users.json
          def create
            @objective = Objective.new(objective_params)
        
            respond_to do |format|
              if @objective.save
                format.html { redirect_to @objective, notice: 'objective was successfully created.' }
                format.json { render :show, status: :created, location: @objective }
              else
                format.html { render :new }
                format.json { render json: @objective.errors, status: :unprocessable_entity }
              end
            end
          end
        
          # PATCH/PUT /users/1
          # PATCH/PUT /users/1.json
          def update
            respond_to do |format|
              if @objective.update(objective_params)
                format.html { redirect_to @objective, notice: 'objective was successfully updated.' }
                format.json { render :show, status: :ok, location: @objective }
              else
                format.html { render :edit }
                format.json { render json: @objective.errors, status: :unprocessable_entity }
              end
            end
          end
        
          # DELETE /users/1
          # DELETE /users/1.json
          def destroy
            @objective.destroy
            respond_to do |format|
              format.html { redirect_to users_url, notice: 'objective was successfully destroyed.' }
              format.json { head :no_content }
            end
          end
        
          private
            # Use callbacks to share common setup or constraints between actions.
            def set_objective
              @objective = Objective.find(params[:id])
            end
        
            # Never trust parameters from the scary internet, only allow the white list through.
            def objective_params
              params.require(:objective).permit(:description, :period_value, :tiempo_id, key_results_attributes: [:description, :kr_measure_id])
            end
        end
        
