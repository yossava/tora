require 'test_helper'

class FinancelogsControllerTest < ActionController::TestCase
  setup do
    @financelog = financelogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financelogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financelog" do
    assert_difference('Financelog.count') do
      post :create, financelog: { jumlah: @financelog.jumlah, produk_id: @financelog.produk_id, toko_id: @financelog.toko_id, user_id: @financelog.user_id }
    end

    assert_redirected_to financelog_path(assigns(:financelog))
  end

  test "should show financelog" do
    get :show, id: @financelog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financelog
    assert_response :success
  end

  test "should update financelog" do
    patch :update, id: @financelog, financelog: { jumlah: @financelog.jumlah, produk_id: @financelog.produk_id, toko_id: @financelog.toko_id, user_id: @financelog.user_id }
    assert_redirected_to financelog_path(assigns(:financelog))
  end

  test "should destroy financelog" do
    assert_difference('Financelog.count', -1) do
      delete :destroy, id: @financelog
    end

    assert_redirected_to financelogs_path
  end
end
