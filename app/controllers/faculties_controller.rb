class FacultiesController < ApplicationController
  def index
    @faculties = Faculty.all
  end
  def show
    @faculty = Faculty.find(params[:id])

  end
  def new
    @faculty = Faculty.new
  end
  def edit

  end
  def create
    @college_information = CollegeInformation.find(params[:faculty][:college_information_id])
    @faculty = @college_information.faculties.new(params[:faculty])
    if @faculty.save
      redirect_to @faculty
    else
      render :new
    end

  end
  def update
    @faculty = Faculty.find(params[:id])
    redirect_to
  else
    render
  end
  def destroy
    @faculty = Faculty.find(params[:id])
    @faculty.destroy
    flash.now[:notice] = "Selected Faculty deleted successfully."
    redirect_to faculties_path
  end
end
