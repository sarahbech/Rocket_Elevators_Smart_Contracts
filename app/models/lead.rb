class Lead < ActiveRecord::Base
    include RailsAdminCharts

    def self.chart_type
        'column'
    end
    
    validates :fullName, :companyName, :email, :phoneNumber, :projectName, :projectDescription ,
     :department, :message, :uploadFile, presence: true

     has_one_attached :uploadFile
     
end
