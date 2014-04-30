require 'test_helper'

class RakesControllerTest < ActionController::TestCase
  setup do
    @rake = rakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rake" do
    assert_difference('Rake.count') do
      post :create, rake: { db: @rake.db }
    end

    assert_redirected_to rake_path(assigns(:rake))
  end

  test "should show rake" do
    get :show, id: @rake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rake
    assert_response :success
  end

  test "should update rake" do
    patch :update, id: @rake, rake: { db: @rake.db }
    assert_redirected_to rake_path(assigns(:rake))
  end

  test "should destroy rake" do
    assert_difference('Rake.count', -1) do
      delete :destroy, id: @rake
    end

    assert_redirected_to rakes_path
  end
end
