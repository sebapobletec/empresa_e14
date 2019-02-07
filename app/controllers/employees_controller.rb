class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @company = Company.find(params[:company_id])
    @employee.company = @company
    @employee.save
    redirect_to @company
  end

  def destroy
    @company = Company.find(params[:company_id])
    @employee = Employee.find(params[:id])
    @employee.company = @company
    @employee.destroy
    redirect_to @company
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end

end
