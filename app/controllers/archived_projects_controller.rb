class ArchivedProjectsController < ApplicationController
  def index
    #@search = Project.where(:project_status => "Complete").search(params[:q])
    @search = Project.where(project_status: ['Complete', 'Archived']).search(params[:q])
    @projects = @search.result(distinct: true).order(:name, :id)
  end

  def show
    @project = Project.find(params[:id])
    
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @project_proposals = @project.project_proposals.all
    @project_contracts = @project.project_contracts.all
    @project_invoices = @project.project_invoices.all
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_pw9s = @project.project_pw9s.all
    @project_pdocuments = @project.project_pdocuments.all
    @services = @project.services.all
  end
end
