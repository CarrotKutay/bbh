require "application_system_test_case"

class IngredientsTest < ApplicationSystemTestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "visiting the index" do
    visit ingredients_url
    assert_selector "h1", text: "Ingredients"
  end

  test "creating a Ingredient" do
    visit ingredients_url
    click_on "New Ingredient"

    fill_in "Allergicsubstances", with: @ingredient.allergicSubstances
    fill_in "Productable", with: @ingredient.productable_id
    fill_in "Productable type", with: @ingredient.productable_type
    fill_in "Providerid", with: @ingredient.providerID_id
    fill_in "Type", with: @ingredient.type
    click_on "Create Ingredient"

    assert_text "Ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient" do
    visit ingredients_url
    click_on "Edit", match: :first

    fill_in "Allergicsubstances", with: @ingredient.allergicSubstances
    fill_in "Productable", with: @ingredient.productable_id
    fill_in "Productable type", with: @ingredient.productable_type
    fill_in "Providerid", with: @ingredient.providerID_id
    fill_in "Type", with: @ingredient.type
    click_on "Update Ingredient"

    assert_text "Ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient" do
    visit ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient was successfully destroyed"
  end
end
