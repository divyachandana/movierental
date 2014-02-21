class RentalsController < ApplicationController
  
   def index
  @rentals = Rental.all
  end
  
  def new
    @rental = Rental.new
  end
  
  def create
    @rental = Rental.new(params[:rental].permit(:mobileno,:moviename))
   mobileno_exist= Customer.find_by_mobileno(params[:rental][:mobileno])
   moviename_found=Rental.find_by_moviename(params[:rental][:moviename])
   moviename_exist=Movie.find_by_moviename(params[:rental][:moviename])
   movie_count=Rental.where(:mobileno => params[:rental][:mobileno]).count
   
     if !mobileno_exist
       flash[:error] = "Enter Valid Mobileno"
       render 'new'
     elsif !moviename_exist
       flash[:error] = "Enter Valid MovieName"
       render 'new'
     elsif movie_count== 5
         flash[:error] = "Sorry for inconvience . your rents exceded the limit"
         render 'new'
     elsif moviename_found
         flash[:error] = "Sorry This Movie is not Available in the store"
         render 'new'
     else
         if @rental.save
           redirect_to @rental
         else
           render 'new'
         end
     end 
  end
  
  def show
  @rental = Rental.find(params[:id])
  end
  
  def edit
    @rental=Rental.find(params[:id])
  end
  
  def update
    @rental = Rental.find(params[:id])
    if @rental.update(params[:rental].permit(:mobileno,:moviename))
      redirect_to @rental
      
    else
      render 'edit'
      @rental = Movie.find_or_initialize_by_name(name)
    end
  end
  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy 
    redirect_to rentals_path
  end
  
 
private
  def rental_params
    params.require(:rental).permit(:mobileno,:moviename,)
  end


end

