class ArchivedProject < ActiveRecord::Base
    
    has_many :project_picons, dependent: :destroy
    accepts_nested_attributes_for :project_picons
    
    has_many :project_cicons, dependent: :destroy
    accepts_nested_attributes_for :project_cicons
    
    has_many :project_proposals, dependent: :destroy
    accepts_nested_attributes_for :project_proposals
    
    has_many :project_contracts, dependent: :destroy
    accepts_nested_attributes_for :project_contracts
    
    has_many :project_invoices, dependent: :destroy
    accepts_nested_attributes_for :project_invoices
    
    has_many :project_prevcontracts, dependent: :destroy
    accepts_nested_attributes_for :project_prevcontracts
    
    has_many :project_pw9s, dependent: :destroy
    accepts_nested_attributes_for :project_pw9s
    
    has_many :project_pdocuments, dependent: :destroy
    accepts_nested_attributes_for :project_pdocuments
    
    has_and_belongs_to_many :services, dependent: :destroy
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: false, :allow_blank => true, uniqueness: { case_sensitive: false }, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    
    
end
