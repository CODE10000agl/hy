require 'test_helper'

class QusersControllerTest < ActionController::TestCase
  setup do
    @quser = qusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quser" do
    assert_difference('Quser.count') do
      post :create, quser: { displayname: @quser.displayname, encrypass: @quser.encrypass, qmail: @quser.qmail, qoid: @quser.qoid, qsubscriber: @quser.qsubscriber }
    end

    assert_redirected_to quser_path(assigns(:quser))
  end

  test "should show quser" do
    get :show, id: @quser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quser
    assert_response :success
  end

  test "should update quser" do
    patch :update, id: @quser, quser: { displayname: @quser.displayname, encrypass: @quser.encrypass, qmail: @quser.qmail, qoid: @quser.qoid, qsubscriber: @quser.qsubscriber }
    assert_redirected_to quser_path(assigns(:quser))
  end

  test "should destroy quser" do
    assert_difference('Quser.count', -1) do
      delete :destroy, id: @quser
    end

    assert_redirected_to qusers_path
  end
end
