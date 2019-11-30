class EmployeeController < ApplicationController
 def new
       @employee = Employee.new
       wrap_parameters :employees, include: [:email, :encrypted_password, :password_confirmation]
   end
end