require "application_system_test_case"

class AdminAccountsTest < ApplicationSystemTestCase
  setup do
    @admin_account = admin_accounts(:one)
  end

  test "visiting the index" do
    visit admin_accounts_url
    assert_selector "h1", text: "Admin Accounts"
  end

  test "creating a Admin account" do
    visit admin_accounts_url
    click_on "New Admin Account"

    fill_in "Accountlevel", with: @admin_account.accountLevel
    fill_in "Accountable", with: @admin_account.accountable_id
    fill_in "Accountable type", with: @admin_account.accountable_type
    click_on "Create Admin account"

    assert_text "Admin account was successfully created"
    click_on "Back"
  end

  test "updating a Admin account" do
    visit admin_accounts_url
    click_on "Edit", match: :first

    fill_in "Accountlevel", with: @admin_account.accountLevel
    fill_in "Accountable", with: @admin_account.accountable_id
    fill_in "Accountable type", with: @admin_account.accountable_type
    click_on "Update Admin account"

    assert_text "Admin account was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin account" do
    visit admin_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin account was successfully destroyed"
  end
end
