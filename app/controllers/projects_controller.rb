class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    #@search = Project.search(params[:q])
    #Changed the following to loose the completed/archived projects...
    #I will need to added an archived section
    @search = Project.where.not(:project_status => "Complete").search(params[:q])
    
    #@projects = Project.all
    @projects = @search.result(distinct: true).order(:name, :id)
    #@projects = @search.result(distinct: true).order(:name, :id).paginate(:page => params[:page], :per_page => 25)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
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

  # GET /projects/new
  def new
    @project = Project.new
    @project_picon = @project.project_picons.build
    @project_picons = @project.project_picons.all
    @project_cicon = @project.project_cicons.build
    @project_cicons = @project.project_cicons.all
    @project_proposal = @project.project_proposals.build
    @project_proposals = @project.project_proposals.all
    @project_contract = @project.project_contracts.build
    @project_contracts = @project.project_contracts.all
    @project_invoice = @project.project_invoices.build
    @project_invoices = @project.project_invoices.all
    @project_prevcontract = @project.project_prevcontracts.build
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_pw9 = @project.project_pw9s.build
    @project_pw9s = @project.project_pw9s.all
    @project_pdocument = @project.project_pdocuments.build
    @project_pdocuments = @project.project_pdocuments.all
  end

  # GET /projects/1/edit
  def edit
    @project_picon = @project.project_picons.build
    @project_picons = @project.project_picons.all
    @project_cicon = @project.project_cicons.build
    @project_cicons = @project.project_cicons.all
    @project_proposal = @project.project_proposals.build
    @project_proposals = @project.project_proposals.all
    @project_contract = @project.project_contracts.build
    @project_contracts = @project.project_contracts.all
    @project_invoice = @project.project_invoices.build
    @project_invoices = @project.project_invoices.all
    @project_prevcontract = @project.project_prevcontracts.build
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_pw9 = @project.project_pw9s.build
    @project_pw9s = @project.project_pw9s.all
    @project_pdocument = @project.project_pdocuments.build
    @project_pdocuments = @project.project_pdocuments.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @project_proposals = @project.project_proposals.all
    @project_contracts = @project.project_contracts.all
    @project_invoices = @project.project_invoices.all
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_pw9s = @project.project_pw9s.all
    @project_pdocuments = @project.project_pdocuments.all

    respond_to do |format|
      if @project.save
         if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
         end
         if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
         end
         if params.has_key?(:project_proposals)
           params[:project_proposals]['proposal'].each do |a|
              @project_proposal = @project.project_proposals.create!(:proposal => a)
           end
         end
         if params.has_key?(:project_contracts)
           params[:project_contracts]['contract'].each do |a|
              @project_contract = @project.project_contracts.create!(:contract => a)
           end
         end
         if params.has_key?(:project_invoices)
           params[:project_invoices]['invoice'].each do |a|
              @project_invoice = @project.project_invoices.create!(:invoice => a)
           end
         end
         if params.has_key?(:project_prevcontracts)
           params[:project_prevcontracts]['prevcontract'].each do |a|
              @project_prevcontract = @project.project_prevcontracts.create!(:prevcontract => a)
           end
         end
         if params.has_key?(:project_pw9s)
           params[:project_pw9s]['pw9'].each do |a|
              @project_pw9 = @project.project_pw9s.create!(:pw9 => a)
           end
         end
         if params.has_key?(:project_pdocuments)
           params[:project_pdocuments]['pdocument'].each do |a|
              @project_pdocument = @project.project_pdocuments.create!(:pdocument => a)
           end
         end
         format.html { redirect_to @project, notice: 'Project was successfully created.' }
         format.json { render :show, status: :created, location: @project }
      else
         format.html { render action: 'new' }
         format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @project_proposals = @project.project_proposals.all
    @project_contracts = @project.project_contracts.all
    @project_invoices = @project.project_invoices.all
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_pw9s = @project.project_pw9s.all
    @project_pdocuments = @project.project_pdocuments.all
    
    respond_to do |format|
      if @project.update(project_params)
        if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
        end
        if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
        end
        if params.has_key?(:project_proposals)
           params[:project_proposals]['proposal'].each do |a|
              @project_proposal = @project.project_proposals.create!(:proposal => a)
           end
        end
        if params.has_key?(:project_contracts)
           params[:project_contracts]['contract'].each do |a|
              @project_contract = @project.project_contracts.create!(:contract => a)
           end
        end
        if params.has_key?(:project_invoices)
           params[:project_invoices]['invoice'].each do |a|
              @project_invoice = @project.project_invoices.create!(:invoice => a)
           end
        end
        if params.has_key?(:project_prevcontracts)
           params[:project_prevcontracts]['prevcontract'].each do |a|
              @project_prevcontract = @project.project_prevcontracts.create!(:prevcontract => a)
           end
        end
        if params.has_key?(:project_pw9s)
           params[:project_pw9s]['pw9'].each do |a|
              @project_pw9 = @project.project_pw9s.create!(:pw9 => a)
           end
        end
        if params.has_key?(:project_pdocuments)
           params[:project_pdocuments]['pdocument'].each do |a|
              @project_pdocument = @project.project_pdocuments.create!(:pdocument => a)
           end
        end
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :project_status, :phases, :grand_total, :nbd, :primary_street, :primary_city, :primary_state, :primary_zip, :client_name, :email, :telephone, :correspondence_notes, :client_contact, :client_meeting, :client_proposal, :project_start, :project_finish, :billing_street, :billing_city, :billing_state, :billing_zip, :brief_description, :staffing_notes, :deal_terms, :rate, :additional_terms, :doc_links, { service_ids:[] }, project_picons_attributes: [:id, :project_id, :picon], project_cicons_attributes: [:id, :project_id, :cicon], project_proposals_attributes: [:id, :project_id, :proposal], project_contracts_attributes: [:id, :project_id, :contract], project_invoices_attributes: [:id, :project_id, :invoice], project_prevcontracts_attributes: [:id, :project_id, :prevcontract], project_pw9s_attributes: [:id, :project_id, :pw9], project_pdocuments_attributes: [:id, :project_id, :pdocument])
    end
end
