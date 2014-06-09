#class StudentsController < ApplicationController

class StudentsController < InheritedResources::Base
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])

  end
  def new
    @student = Student.new
  end
  def edit
    @student = Student.find(params[:id])

  end
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end
  def update
    @student = Student.find(params[:id])
    redirect_to @student
  else
    render action: "edit"
  end
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end
end

