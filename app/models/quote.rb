class Quote < ActiveRecord::Base
  include RailsAdminCharts

  def self.chart_type
    'column'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :rememberable 
end
