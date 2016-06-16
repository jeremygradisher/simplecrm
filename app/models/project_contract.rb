class ProjectContract < ActiveRecord::Base
  mount_uploader :contract, ContractUploader
  belongs_to :project
end
