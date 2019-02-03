require "application_system_test_case"

class ProviderAccountsTest < ApplicationSystemTestCase
  setup do
    @provider_account = provider_accounts(:one)
  end

  test "visiting the index" do
    visit provider_accounts_url
    assert_selector "h1", text: "Provider Accounts"
  end

  test "creating a Provider account" do
    visit provider_accounts_url
    click_on "New Provider Account"

    fill_in "Accountable", with: @provider_account.accountable_id
    fill_in "Accountable type", with: @provider_account.accountable_type
    fill_in "Providerid", with: @provider_account.providerID
    fill_in "Provideringredients", with: @provider_account.providerIngredients_id
    click_on "Create Provider account"

    assert_text "Provider account was successfully created"
    click_on "Back"
  end

  test "updating a Provider account" do
    visit provider_accounts_url
    click_on "Edit", match: :first

    fill_in "Accountable", with: @provider_account.accountable_id
    fill_in "Accountable type", with: @provider_account.accountable_type
    fill_in "Providerid", with: @provider_account.providerID
    fill_in "Provideringredients", with: @provider_account.providerIngredients_id
    click_on "Update Provider account"

    assert_text "Provider account was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider account" do
    visit provider_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider account was successfully destroyed"
  end
end
