class CollegeRegistrationsController < ApplicationController
  def index
    @college_registrations = CollegeRegistration.all
  end
  def show
    @college_registration = CollegeRegistration.find(params[:id])
    puts "================================================================================================="
    puts @college_registration.inspect
    puts "================================================================================================="
  end

  def new
    @college_registration = CollegeRegistration.new
  end

  def create
    @college_information = CollegeInformation.find(params[:college_registration][:college_information_id])
    @college_registration = @college_information.college_registrations.new(params[:college_registration])

    if @college_registration.save
      redirect_to @college_registration
    else
      render :new
    end
  end
end
