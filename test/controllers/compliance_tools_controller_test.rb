require 'test_helper'

class ComplianceToolsControllerTest < ActionController::TestCase
  setup do
    @compliance_tool = compliance_tools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compliance_tools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compliance_tool" do
    assert_difference('ComplianceTool.count') do
      post :create, compliance_tool: { customer_name: @compliance_tool.customer_name, customer_number: @compliance_tool.customer_number, date_of_flag: @compliance_tool.date_of_flag, notes: @compliance_tool.notes, open_or_closed: @compliance_tool.open_or_closed, transaction_amount_if_applicable: @compliance_tool.transaction_amount_if_applicable }
    end

    assert_redirected_to compliance_tool_path(assigns(:compliance_tool))
  end

  test "should show compliance_tool" do
    get :show, id: @compliance_tool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compliance_tool
    assert_response :success
  end

  test "should update compliance_tool" do
    patch :update, id: @compliance_tool, compliance_tool: { customer_name: @compliance_tool.customer_name, customer_number: @compliance_tool.customer_number, date_of_flag: @compliance_tool.date_of_flag, notes: @compliance_tool.notes, open_or_closed: @compliance_tool.open_or_closed, transaction_amount_if_applicable: @compliance_tool.transaction_amount_if_applicable }
    assert_redirected_to compliance_tool_path(assigns(:compliance_tool))
  end

  test "should destroy compliance_tool" do
    assert_difference('ComplianceTool.count', -1) do
      delete :destroy, id: @compliance_tool
    end

    assert_redirected_to compliance_tools_path
  end
end
