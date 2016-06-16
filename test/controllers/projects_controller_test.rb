require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { additional_terms: @project.additional_terms, billing_city: @project.billing_city, billing_state: @project.billing_state, billing_street: @project.billing_street, billing_zip: @project.billing_zip, brief_description: @project.brief_description, client_contact: @project.client_contact, client_meeting: @project.client_meeting, client_name: @project.client_name, client_proposal: @project.client_proposal, deal_terms: @project.deal_terms, doc_links: @project.doc_links, name: @project.name, primary_city: @project.primary_city, primary_state: @project.primary_state, primary_street: @project.primary_street, primary_zip: @project.primary_zip, project_finish: @project.project_finish, project_start: @project.project_start, project_status: @project.project_status, rate: @project.rate, staffing_notes: @project.staffing_notes }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { additional_terms: @project.additional_terms, billing_city: @project.billing_city, billing_state: @project.billing_state, billing_street: @project.billing_street, billing_zip: @project.billing_zip, brief_description: @project.brief_description, client_contact: @project.client_contact, client_meeting: @project.client_meeting, client_name: @project.client_name, client_proposal: @project.client_proposal, deal_terms: @project.deal_terms, doc_links: @project.doc_links, name: @project.name, primary_city: @project.primary_city, primary_state: @project.primary_state, primary_street: @project.primary_street, primary_zip: @project.primary_zip, project_finish: @project.project_finish, project_start: @project.project_start, project_status: @project.project_status, rate: @project.rate, staffing_notes: @project.staffing_notes }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
