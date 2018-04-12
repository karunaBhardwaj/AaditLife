class SchedulesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :schedule_params, except: [:create]


  # GET /schedules
  # GET /schedules.json
  def index
    # By default we only give this weeks schedule

    if(params[:fitness_test_id].present?)
      @schedules = @schedules.where(fitness_test_id: params[:fitness_test_id])
    else
      scheduled_date = Date.today    
      if(params[:scheduled_date].present?)
        scheduled_date = Date.strptime(params[:scheduled_date], "%d/%m/%Y")
      end
      @schedules = @schedules.where("scheduled_date >= ? and scheduled_date <= ?", 
                                     scheduled_date.beginning_of_week, scheduled_date.end_of_week)
    end

    
    render json: @schedules.includes(:workout)
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    render json: @schedule
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      render json: @schedule, status: :created, location: @schedule
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    if @schedule.update(schedule_params)
      render json: @schedule, status: :ok, location: @schedule
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:user_id, :workout_id, :fitness_test_id, :scheduled_date, 
        :completion_percentage, :rating, :comments)
    end
end
