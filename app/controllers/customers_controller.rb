class CustomersController < ApplicationController
  
  def index
  
  @customers = Customer.all
  end
  
  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(params[:customer].permit(:name, :mobileno,:email,:address))
   
    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end
  end
  
  def show
  @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer=Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(params[:customer].permit(:name, :mobileno,:email,:address))
      redirect_to @customer
      
    else
      render 'edit'
      customer = Customer.find_or_initialize_by_name(name)
    end
  end
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
 
    redirect_to customers_path
  end
 
private
  def customer_params
    params.require(:customer).permit(:name, :mobileno,:email,:address)
  end
  
end


