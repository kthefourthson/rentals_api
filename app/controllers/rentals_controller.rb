class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]
  
  # GET /rentals
  def index
    @rentals = Rental.all
  end
  
  # GET /rentals/1
  def show
  end
  
  # GET /rentals/new
  def new
    @rental = Rental.new
  end
  
  # GET /rentals/1/edit
  def edit
  end
  
  # POST /rentals
  def create
    @rental = Rental.new(rental_params)
    
    if @rental.save
      redirect_to @rental, notice: 'Rental was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /rentals/1
  def update
    if @rental.update(rental_params)
      redirect_to @rental, notice: 'Rental was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  # DELETE /rentals/1
  def destroy
    @rental.destroy
    redirect_to rentals_url, notice: 'Rental was successfully destroyed.'
  end
  
  private
  
  def set_rental
    @rental = Rental.find(params[:id])
  end
  
  def rental_params
    # Strong parameters - adjust based on your Rental model attributes
    params.require(:rental).permit(
      :user_id, 
      :product_id, 
      :start_date, 
      :end_date, 
      :total_price,
      :status
    )
  end
end