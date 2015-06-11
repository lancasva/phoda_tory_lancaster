class JobRequestsController < ApplicationController
  def index
    @job_requests = JobRequest.all
  end

  def show
    @job_request = JobRequest.find(params[:id])
  end

  def new
    @job_request = JobRequest.new

    @job_request.photographer_id = params[:id]




  end

  def create
    @job_request = JobRequest.new
    @job_request.availability_id = params[:availability_id]
    @job_request.user_id = params[:user_id]
    @job_request.description = params[:description]
    @job_request.location = params[:location]
    @job_request.time = params[:time]
    @job_request.date = params[:date]
    @job_request.user_last_name = params[:user_last_name]
    @job_request.user_first_name = params[:user_first_name]
    @job_request.photographer_id = params[:photographer_id]
    @job_request.user_email = params[:user_email]




    if @job_request.save
      redirect_to "/job_requests", :notice => "Job request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @job_request = JobRequest.find(params[:id])
  end

  def update
    @job_request = JobRequest.find(params[:id])

    @job_request.availability_id = params[:availability_id]
    @job_request.user_id = params[:user_id]
    @job_request.description = params[:description]
    @job_request.location = params[:location]
    @job_request.time = params[:time]
    @job_request.date = params[:date]
    @job_request.user_last_name = params[:user_last_name]
    @job_request.user_first_name = params[:user_first_name]

    if @job_request.save
      redirect_to "/job_requests", :notice => "Job request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @job_request = JobRequest.find(params[:id])

    @job_request.destroy

    redirect_to "/job_requests", :notice => "Job request deleted."
  end
end
