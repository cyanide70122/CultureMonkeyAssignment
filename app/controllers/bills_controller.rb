class BillsController < ApplicationController
    def index
        @bills = Bill.includes(:employee => :department).all

        @total_amount = @bills.sum(:amount)
    end
  
    def new
        @bill = Bill.new
        @employees = Employee.includes(:department).all
    end
  
    def create
        @bill = Bill.new(bill_params)
        if @bill.save
            redirect_to bills_path
        else
            @employees = Employee.includes(:department).all
            flash.now[:alert] = @bill.errors.full_messages.join(', ')
            render :new
        end
    end
  
    private
  
    def bill_params
        params.require(:bill).permit(:amount, :bill_type, :employee_id)
    end
end
  