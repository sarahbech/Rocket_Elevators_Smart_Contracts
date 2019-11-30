class QuoteController < ApplicationController  
#   def quote_params
#       params.require(:quote).permit(:fullName, :company, :email, :phone, :postalCode, :projectName, :projectDescription, :message, :numberApartments, :numberFloors, :numberBasements, :parkingSpots, :cages, :distinctsBusiness, :tenantsBusiness, :maxOccupants, :dailyActivities, :range, :numberElevators, :servicePrice, installationPrice, :totalPrice)
#     end
# end

skip_before_action :verify_authenticity_token, :only => [:create]

before_action :set_quote, only: [:show, :edit, :update, :destroy]

def index
@quote = Quote.new
end

def create
  puts 'test'
  puts params

  # Personal and Company Informations
  fullName = params['quoteName']
  company = params['quoteCompany']
  email = params['quoteEmail']
  phone = params['quotePhone']
  projectName = params['quoteProjectName']
  postalCode = params['quotePostal']
  projectDescription = params['quoteDescription']
  message = params['quoteMessage']
  
  # Building Type
  department = params['buildingType']
  
  # Building Properties       
  resiAparts = params['resiAparts']
  resiFloor = params['resiFloor']
  resiBase = params['resiBase']

  commShops = params['commShops']
  commFloor = params['commFloor']
  commBase = params['commBase']
  commParks = params['commParks']
  commShafts = params['commShafts']
  
  corpTenants = params['corpTenants']
  corpFloor = params['corpFloor']
  corpBase = params['corpBase']
  corpParks = params['corpParks']
  corpOcc = params['corpOcc']

  hybrShops = params['hybrShops']
  hybrFloor = params['hybrFloor']
  hybrBase = params['hybrBase']
  hybrParks = params['hybrParks']
  hybrOcc = params['hybrOcc']
  hybrHours = params['hybrHours']
  
  # Quality Range
  range = params['range']

  # Elevator Quantity
  numberElevators = params['elevatorQty']
  # Cost
  servicePrice = params['serviceCost']
  installationPrice = params['installationFees']
  totalPrice = params['totalCost']

  @quote = Quote.new(quote_params)

  puts "@Quotes ===================================="
  puts @quote.inspect
  puts "=================================== @Quotes"


  #@quote.type = department

  if department == 'residential'

      @quote.fullName = fullName
      @quote.company = company
      @quote.email = email
      @quote.phone = phone
      @quote.projectName = projectName
      @quote.postalCode = postalCode
      @quote.projectDescription = projectDescription
      @quote.message = message

      @quote.numberApartments = resiAparts
      @quote.numberFloors = resiFloor
      @quote.numberBasements = resiBase

      @quote.cages = numberElevators
      @quote.servicePrice = servicePrice
      @quote.installationPrice = installationPrice
      @quote.totalPrice = totalPrice

      @quote.save!

      redirect_to confirmation_path
    end

  if department == 'commercial'

      @quote.fullName = fullName
      @quote.company = company
      @quote.email = email
      @quote.phone = phone
      @quote.projectName = projectName
      @quote.postalCode = postalCode
      @quote.projectDescription = projectDescription
      @quote.message = message
   
      @quote.numberFloors = commFloor
      @quote.numberBasements = commBase
  
      @quote.cages = numberElevators
      @quote.servicePrice = servicePrice
      @quote.installationPrice = installationPrice
      @quote.totalPrice = totalPrice

      @quote.save!

      redirect_to confirmation_path
    end
  
  if department == 'corporate'

      @quote.fullName = fullName
      @quote.company = company
      @quote.email = email
      @quote.phone = phone
      @quote.projectName = projectName
      @quote.postalCode = postalCode
      @quote.projectDescription = projectDescription
      @quote.message = message

      @quote.numberFloors = corpFloor
      @quote.numberBasements = corpBase
  
      @quote.cages = numberElevators
      @quote.servicePrice = servicePrice
      @quote.installationPrice = installationPrice
      @quote.totalPrice = totalPrice

      @quote.save!

      redirect_to confirmation_path
    end
    
  if department == 'hybrid'

      @quote.fullName = fullName
      @quote.company = company
      @quote.email = email
      @quote.phone = phone
      @quote.projectName = projectName
      @quote.postalCode = postalCode
      @quote.projectDescription = projectDescription
      @quote.message = message

      @quote.aparts = hybrAparts
      @quote.numberFloors = hybrFloor
      @quote.numberBasements = hybrBase
  
      @quote.cages = numberElevators
      @quote.servicePrice = servicePrice
      @quote.installationPrice = installationPrice
      @quote.totalPrice = totalPrice

      puts "@Quotes ===================================="
      puts @quote.inspect
      puts "=================================== @Quotes"

      @quote.save!

      redirect_to index_confirmation_path
    end   
  
    puts "@Quotes ===================================="
    puts @quote.inspect
    puts "=================================== @Quotes"


    if department == nil
      redirect_to confirmation_path
    end
end

def quote
  @quote = Quote.all

end



 
def show
end

def edit
end

# respond_to do |format|
#   if @quote.save
#     format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
#     format.json { render :show, status: :created, location: @quote }
#   else
#       format.html { render :new }
#       format.json { render json: @quote.errors, status: :unprocessable_entity }
#   end
# end

def update
  respond_to do |format|
    if @quote.update(quote_params)
      format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
      format.json { render :show, status: :ok, location: @quote }
    else
      format.html { render :edit }
      format.json { render json: @quote.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @quote.destroy
  respond_to do |format|
    format.html { redirect_to quotes_url, notice: 'Quote was successfully deleted.' }
    format.json { head :no_content }
  end
end

private

  def set_quote
    @quote = Quote.find(params[:name])
  end

  def quote_params
    params.fetch(:quote, {})
  end
end
