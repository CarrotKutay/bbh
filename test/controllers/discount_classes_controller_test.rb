require 'test_helper'

class DiscountClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discount_class = discount_classes(:one)
  end

  test "should get index" do
    get discount_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_discount_class_url
    assert_response :success
  end

  test "should create discount_class" do
    assert_difference('DiscountClass.count') do
      post discount_classes_url, params: { discount_class: { class_id: @discount_class.class_id, description: @discount_class.description } }
    end

    assert_redirected_to discount_class_url(DiscountClass.last)
  end

  test "should show discount_class" do
    get discount_class_url(@discount_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_discount_class_url(@discount_class)
    assert_response :success
  end

  test "should update discount_class" do
    patch discount_class_url(@discount_class), params: { discount_class: { class_id: @discount_class.class_id, description: @discount_class.description } }
    assert_redirected_to discount_class_url(@discount_class)
  end

  test "should destroy discount_class" do
    assert_difference('DiscountClass.count', -1) do
      delete discount_class_url(@discount_class)
    end

    assert_redirected_to discount_classes_url
  end
end
