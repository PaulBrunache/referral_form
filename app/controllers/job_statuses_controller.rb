class JobStatusesController < ApplicationController
  before_action :set_job_status, only: [:show, :edit, :update, :destroy]

  # GET /job_statuses
  def index
    @job_statuses = JobStatus.all
  end

  # GET /job_statuses/1
  def show
  end

  # GET /job_statuses/new
  def new
    @job_status = JobStatus.new
  end

  # GET /job_statuses/1/edit
  def edit
  end

  # POST /job_statuses
  def create
    @job_status = JobStatus.new(job_status_params)

    if @job_status.save
      redirect_to @job_status, notice: 'Job status was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /job_statuses/1
  def update
    if @job_status.update(job_status_params)
      redirect_to @job_status, notice: 'Job status was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /job_statuses/1
  def destroy
    @job_status.destroy
    redirect_to job_statuses_url, notice: 'Job status was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_status
      @job_status = JobStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_status_params
      params.require(:job_status).permit(:name, :point_value)
    end
end
