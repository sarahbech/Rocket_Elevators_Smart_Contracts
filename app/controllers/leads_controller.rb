class LeadsController < ApplicationController   

skip_before_action :verify_authenticity_token, :only => [:create]

# before_action :set_leads, only: [:show, :edit, :update, :destroy]

def new
@lead = Lead.new
end

def create
    
    # lead.uploadFile.attach(params[:uploadFile])
    @lead = Lead.new(leads_params)
    uploadFile = params[:uploadFile]
    puts "----------------------"
    puts uploadFile
    puts "----------------------"

    puts@lead.uploadFile
  
    # @lead.file_name = uploadFile.original_filename
    puts leads_params
    

  #(leads_params)
#   t.string :fullName
#   t.string :compagnyName
#   t.string :email
#   t.string :phoneNumber
#   t.string :projectName
#   t.string :projectDescription 
#   t.string :department
#   t.text :message
#   t.binary :uploadFile

  puts "@Leads ===================================="
  puts @leads
  puts "=================================== @Leads"
 
      @lead.save!

      redirect_to confirmation_path
    end   
    
     
    private
    
     def leads_params
        p params
        params.permit(
        :fullName,:companyName,:message,:email,:phoneNumber,:projectName,:projectDescription,:department,:uploadFile
    )    
    end

# def quote
#   @quote = Quote.all

# end

# def index
#   @leads = Leads.all
# end

# def show
# end

# def edit
# end

# def update
#   respond_to do |format|
#     if @leads.update(leads_params)
#       format.html { redirect_to @leads, notice: 'Leads was successfully updated.' }
#       format.json { render :show, status: :ok, location: @leads }
#     else
#       format.html { render :edit }
#       format.json { render json: @leads.errors, status: :unprocessable_entity }
#     end
#   end
# end

# def destroy
#   @leads.destroy
#   respond_to do |format|
#     format.html { redirect_to quotes_url, notice: 'Leads was successfully deleted.' }
#     format.json { head :no_content }
#   end
# end
#   def set_leads
#     @quote = Quote.find(params[:name])
# end

#         def leads_params
#             params.fetch(:leads, {})
#         end
#     end
end
