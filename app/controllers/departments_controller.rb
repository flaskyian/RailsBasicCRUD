class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end
  def view
    @department = Department.find_by(abbreviation: params[:abbreviation])
  end
  def delete
    @department = Department.delete(params[:id])
    redirect_to "/departments"
  end
  def new
  end
  def create
    @department = Department.new(abbreviation: params["abbreviation"],
                                name: params["name"],
                                description: params["description"])
    @department.save
    redirect_to "/departments"
  end
  def edit
    @department = Department.find(params[:id])
  end
  def update
    @department = Department.find(params[:id])
    @department.update(abbreviation: params["abbreviation"],
                                  name: params["name"],
                                  description: params["description"])
    redirect_to "/departments/view/#{@department.abbreviation}"
  end
end
