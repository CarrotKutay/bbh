require 'test_helper'

class ProviderAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provider_account = provider_accounts(:one)
  end

  test "should get index" do
    get provider_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_provider_account_url
    assert_response :success
  end

  test "should create provider_account" do
    assert_difference('ProviderAccount.count') do
      post provider_accounts_url, params: { provider_account: { accountable_id: @provider_account.accountable_id, accountable_type: @provider_account.accountable_type, providerID: @provider_account.providerID, providerIngredients_id: @provider_account.providerIngredients_id } }
    end

    assert_redirected_to provider_account_url(ProviderAccount.last)
  end

  test "should show provider_account" do
    get provider_account_url(@provider_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_provider_account_url(@provider_account)
    assert_response :success
  end

  test "should update provider_account" do
    patch provider_account_url(@provider_account), params: { provider_account: { accountable_id: @provider_account.accountable_id, accountable_type: @provider_account.accountable_type, providerID: @provider_account.providerID, providerIngredients_id: @provider_account.providerIngredients_id } }
    assert_redirected_to provider_account_url(@provider_account)
  end

  test "should destroy provider_account" do
    assert_difference('ProviderAccount.count', -1) do
      delete provider_account_url(@provider_account)
    end

    assert_redirected_to provider_accounts_url
  end
end
