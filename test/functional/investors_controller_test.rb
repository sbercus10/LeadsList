require 'test_helper'

class InvestorsControllerTest < ActionController::TestCase
  setup do
    @investor = investors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investor" do
    assert_difference('Investor.count') do
      post :create, investor: { angellist_image_url: @investor.angellist_image_url, angellist_url: @investor.angellist_url, bio: @investor.bio, company_name: @investor.company_name, company_url: @investor.company_url, email_address: @investor.email_address, follower_count: @investor.follower_count, investment_status: @investor.investment_status, job_title: @investor.job_title, location: @investor.location, name: @investor.name, phone_number: @investor.phone_number }
    end

    assert_redirected_to investor_path(assigns(:investor))
  end

  test "should show investor" do
    get :show, id: @investor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investor
    assert_response :success
  end

  test "should update investor" do
    put :update, id: @investor, investor: { angellist_image_url: @investor.angellist_image_url, angellist_url: @investor.angellist_url, bio: @investor.bio, company_name: @investor.company_name, company_url: @investor.company_url, email_address: @investor.email_address, follower_count: @investor.follower_count, investment_status: @investor.investment_status, job_title: @investor.job_title, location: @investor.location, name: @investor.name, phone_number: @investor.phone_number }
    assert_redirected_to investor_path(assigns(:investor))
  end

  test "should destroy investor" do
    assert_difference('Investor.count', -1) do
      delete :destroy, id: @investor
    end

    assert_redirected_to investors_path
  end
end
