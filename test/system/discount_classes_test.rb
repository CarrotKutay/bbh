require "application_system_test_case"

class DiscountClassesTest < ApplicationSystemTestCase
  setup do
    @discount_class = discount_classes(:one)
  end

  test "visiting the index" do
    visit discount_classes_url
    assert_selector "h1", text: "Discount Classes"
  end

  test "creating a Discount class" do
    visit discount_classes_url
    click_on "New Discount Class"

    fill_in "Class", with: @discount_class.class_id
    fill_in "Description", with: @discount_class.description
    click_on "Create Discount class"

    assert_text "Discount class was successfully created"
    click_on "Back"
  end

  test "updating a Discount class" do
    visit discount_classes_url
    click_on "Edit", match: :first

    fill_in "Class", with: @discount_class.class_id
    fill_in "Description", with: @discount_class.description
    click_on "Update Discount class"

    assert_text "Discount class was successfully updated"
    click_on "Back"
  end

  test "destroying a Discount class" do
    visit discount_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discount class was successfully destroyed"
  end
end
