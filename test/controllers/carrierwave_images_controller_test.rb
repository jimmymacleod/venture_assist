require 'test_helper'

class CarrierwaveImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrierwave_image = carrierwave_images(:one)
  end

  test "should get index" do
    get carrierwave_images_url
    assert_response :success
  end

  test "should get new" do
    get new_carrierwave_image_url
    assert_response :success
  end

  test "should create carrierwave_image" do
    assert_difference('CarrierwaveImage.count') do
      post carrierwave_images_url, params: { carrierwave_image: {  } }
    end

    assert_redirected_to carrierwave_image_url(CarrierwaveImage.last)
  end

  test "should show carrierwave_image" do
    get carrierwave_image_url(@carrierwave_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrierwave_image_url(@carrierwave_image)
    assert_response :success
  end

  test "should update carrierwave_image" do
    patch carrierwave_image_url(@carrierwave_image), params: { carrierwave_image: {  } }
    assert_redirected_to carrierwave_image_url(@carrierwave_image)
  end

  test "should destroy carrierwave_image" do
    assert_difference('CarrierwaveImage.count', -1) do
      delete carrierwave_image_url(@carrierwave_image)
    end

    assert_redirected_to carrierwave_images_url
  end
end
