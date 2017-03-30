class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # ======= GET / =======
  def index
    puts "\n ******* jobs_index *******"
    @jobs = Job.all
    @job = Job.new
    
  end

  # ======= GET /jobs =======
  def show
  end

  # ======= GET /jobs/new =======
  def new
    @job = Job.new
  end

  # ======= GET /jobs/edit =======
  def edit
  end

  # ======= GET /jobs/create =======
  def create
    @job = Job.new(job_params)

    puts "\n job_params: #{job_params.inspect}"

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # ======= PATCH/PUT /jobs/:id =======
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def add_boat
    @job = Job.find params[:job_id]
    @boat = Boat.find params[:job][:boats]
    @job.boats.append @boat

    render :back
  end

  # ======= DELETE /jobs/:id =======
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:description, :cost, :origin, :destination, :user_id, :ccontainers, :boat_id)
    end
end
