require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Welcome"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About Us"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact us"
  end

end
