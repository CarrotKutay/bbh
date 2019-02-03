require "application_system_test_case"

class CustomerAccountsTest < ApplicationSystemTestCase
  setup do
    @customer_account = customer_accounts(:one)
  end

  test "visiting the index" do
    visit customer_accounts_url
    assert_selector "h1", text: "Customer Accounts"
  end

  test "creating a Customer account" do
    visit customer_accounts_url
    click_on "New Customer Account"

    fill_in "Accountable", with: @customer_account.accountable_id
    fill_in "Accountable type", with: @customer_account.accountable_type
    fill_in "Birthday", with: @customer_account.birthday
    fill_in "Firstname", with: @customer_account.firstName
    fill_in "Lastname", with: @customer_account.lastName
    fill_in "Orders", with: @customer_account.orders_id
    click_on "Create Customer account"

    assert_text "Customer account was successfully created"
    click_on "Back"
  end

  test "updating a Customer account" do
    visit customer_accounts_url
    click_on "Edit", match: :first

    fill_in "Accountable", with: @customer_account.accountable_id
    fill_in "Accountable type", with: @customer_account.accountable_type
    fill_in "Birthday", with: @customer_account.birthday
    fill_in "Firstname", with: @customer_account.firstName
    fill_in "Lastname", with: @customer_account.lastName
    fill_in "Orders", with: @customer_account.orders_id
    click_on "Update Customer account"

    assert_text "Customer account was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer account" do
    visit customer_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer account was successfully destroyed"
  end
end
