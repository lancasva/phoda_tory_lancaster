class PhotographerProfilesController < ApplicationController
  def index
    @photographer_profiles = PhotographerProfile.all
  end

  def show
    @photographer_profile = PhotographerProfile.find(params[:id])

  end

  def new
    @photographer_profile = PhotographerProfile.new


  end

  def create
    @photographer_profile = PhotographerProfile.new
    @photographer_profile.bio = params[:bio]
    @photographer_profile.style_specialties = params[:style_specialties]
    @photographer_profile.age = params[:age]
    @photographer_profile.last_name = params[:last_name]
    @photographer_profile.first_name = params[:first_name]
    @photographer_profile.photographer_location = params[:photographer_location]
    @photographer_profile.photographer_phone = params[:photographer_phone]

    if @photographer_profile.save
      redirect_to "/photographer_profiles", :notice => "Photographer profile created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photographer_profile = PhotographerProfile.find(params[:id])
  end

  def update
    @photographer_profile = PhotographerProfile.find(params[:id])

    @photographer_profile.bio = params[:bio]
    @photographer_profile.style_specialties = params[:style_specialties]
    @photographer_profile.age = params[:age]
    @photographer_profile.last_name = params[:last_name]
    @photographer_profile.first_name = params[:first_name]

    if @photographer_profile.save
      redirect_to "/photographer_profiles", :notice => "Photographer profile updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photographer_profile = PhotographerProfile.find(params[:id])

    @photographer_profile.destroy

    redirect_to "/photographer_profiles", :notice => "Photographer profile deleted."
  end
end
