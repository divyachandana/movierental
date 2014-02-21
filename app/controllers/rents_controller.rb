class RentsController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new
    @rent = Rent.new
  end
  def create
    #@customer = Customer.find(params[:id])
    @customer=Customer.all
    @customer.each do |t|
      if t.integer :mobileno == params[:rent].permit(:mobileno)
       @rent = Rent.new(params[:rent].permit(:mobileno))
       end
    end
    #if @customer.where(mobileno: 1234567890)
     #   @rent = Rent.new(params[:rent].permit(:mobileno))
     #end 
   
    if @rent.save
      redirect_to @rent
    else
      render 'new'
    end
  end
 def show
  @rent = Rent.find(params[:id])
  end
  
  
end
