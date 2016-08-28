require 'test_helper'

class KonfirmasisControllerTest < ActionController::TestCase
  setup do
    @konfirmasi = konfirmasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:konfirmasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konfirmasi" do
    assert_difference('Konfirmasi.count') do
      post :create, konfirmasi: { bank_penerima: @konfirmasi.bank_penerima, bank_pengirim: @konfirmasi.bank_pengirim, nama_pengirim: @konfirmasi.nama_pengirim, nominal: @konfirmasi.nominal, rekening_pengirim: @konfirmasi.rekening_pengirim, tanggal: @konfirmasi.tanggal, waktu: @konfirmasi.waktu }
    end

    assert_redirected_to konfirmasi_path(assigns(:konfirmasi))
  end

  test "should show konfirmasi" do
    get :show, id: @konfirmasi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konfirmasi
    assert_response :success
  end

  test "should update konfirmasi" do
    patch :update, id: @konfirmasi, konfirmasi: { bank_penerima: @konfirmasi.bank_penerima, bank_pengirim: @konfirmasi.bank_pengirim, nama_pengirim: @konfirmasi.nama_pengirim, nominal: @konfirmasi.nominal, rekening_pengirim: @konfirmasi.rekening_pengirim, tanggal: @konfirmasi.tanggal, waktu: @konfirmasi.waktu }
    assert_redirected_to konfirmasi_path(assigns(:konfirmasi))
  end

  test "should destroy konfirmasi" do
    assert_difference('Konfirmasi.count', -1) do
      delete :destroy, id: @konfirmasi
    end

    assert_redirected_to konfirmasis_path
  end
end
