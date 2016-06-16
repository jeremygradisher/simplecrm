class Project < ActiveRecord::Base
    
    has_many :project_picons, dependent: :destroy
    accepts_nested_attributes_for :project_picons
    
    has_many :project_cicons, dependent: :destroy
    accepts_nested_attributes_for :project_cicons
    
    has_many :project_proposals, dependent: :destroy
    accepts_nested_attributes_for :project_proposals
    
    has_many :project_contracts, dependent: :destroy
    accepts_nested_attributes_for :project_contracts
    
end
