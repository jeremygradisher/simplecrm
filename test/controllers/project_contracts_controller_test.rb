require 'test_helper'

class ProjectContractsControllerTest < ActionController::TestCase
  setup do
    @project_contract = project_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_contract" do
    assert_difference('ProjectContract.count') do
      post :create, project_contract: { contract: @project_contract.contract, project_id: @project_contract.project_id }
    end

    assert_redirected_to project_contract_path(assigns(:project_contract))
  end

  test "should show project_contract" do
    get :show, id: @project_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_contract
    assert_response :success
  end

  test "should update project_contract" do
    patch :update, id: @project_contract, project_contract: { contract: @project_contract.contract, project_id: @project_contract.project_id }
    assert_redirected_to project_contract_path(assigns(:project_contract))
  end

  test "should destroy project_contract" do
    assert_difference('ProjectContract.count', -1) do
      delete :destroy, id: @project_contract
    end

    assert_redirected_to project_contracts_path
  end
end
