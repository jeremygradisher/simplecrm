class Project < ActiveRecord::Base
    
    has_many :project_picons, dependent: :destroy
    accepts_nested_attributes_for :project_picons
    
end
