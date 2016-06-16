class ProjectProposal < ActiveRecord::Base
  mount_uploader :proposal, ProposalUploader
  belongs_to :project
end
