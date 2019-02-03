require 'test_helper'

class CustomerAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_account = customer_accounts(:one)
  end

  test "should get index" do
    get customer_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_account_url
    assert_response :success
  end

  test "should create customer_account" do
    assert_difference('CustomerAccount.count') do
      post customer_accounts_url, params: { customer_account: { accountable_id: @customer_account.accountable_id, accountable_type: @customer_account.accountable_type, birthday: @customer_account.birthday, firstName: @customer_account.firstName, lastName: @customer_account.lastName, orders_id: @customer_account.orders_id } }
    end

    assert_redirected_to customer_account_url(CustomerAccount.last)
  end

  test "should show customer_account" do
    get customer_account_url(@customer_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_account_url(@customer_account)
    assert_response :success
  end

  test "should update customer_account" do
    patch customer_account_url(@customer_account), params: { customer_account: { accountable_id: @customer_account.accountable_id, accountable_type: @customer_account.accountable_type, birthday: @customer_account.birthday, firstName: @customer_account.firstName, lastName: @customer_account.lastName, orders_id: @customer_account.orders_id } }
    assert_redirected_to customer_account_url(@customer_account)
  end

  test "should destroy customer_account" do
    assert_difference('CustomerAccount.count', -1) do
      delete customer_account_url(@customer_account)
    end

    assert_redirected_to customer_accounts_url
  end
end
