class AvailabilitiesController < ApplicationController
  def index
    @availabilities = Availability.all
  end

  def show
    @availability = Availability.find(params[:id])
  end

  def new
    @availability = Availability.new
  end

  def create
    @availability = Availability.new
    @availability.photographer_id = params[:photographer_id]
    @availability.location_available = params[:location_available]
    @availability.time_available = params[:time_available]
    @availability.date_available = params[:date_available]

    if @availability.save
      redirect_to "/availabilities", :notice => "Availability created successfully."
    else
      render 'new'
    end
  end

  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    @availability = Availability.find(params[:id])

    @availability.photographer_id = params[:photographer_id]
    @availability.location_available = params[:location_available]
    @availability.time_available = params[:time_available]
    @availability.date_available = params[:date_available]

    if @availability.save
      redirect_to "/availabilities", :notice => "Availability updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @availability = Availability.find(params[:id])

    @availability.destroy

    redirect_to "/availabilities", :notice => "Availability deleted."
  end
end
