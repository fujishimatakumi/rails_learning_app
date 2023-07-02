require 'test_helper'

class LycorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lycori = lycoris(:one)
  end

  test "should get index" do
    get lycoris_url
    assert_response :success
  end

  test "should get new" do
    get new_lycori_url
    assert_response :success
  end

  test "should create lycori" do
    assert_difference('Lycori.count') do
      post lycoris_url, params: { lycori: { discription: @lycori.discription, download_url: @lycori.download_url, extention_category_id: @lycori.extention_category_id, extention_tag_id: @lycori.extention_tag_id, general_setting_id: @lycori.general_setting_id, name: @lycori.name } }
    end

    assert_redirected_to lycori_url(Lycori.last)
  end

  test "should show lycori" do
    get lycori_url(@lycori)
    assert_response :success
  end

  test "should get edit" do
    get edit_lycori_url(@lycori)
    assert_response :success
  end

  test "should update lycori" do
    patch lycori_url(@lycori), params: { lycori: { discription: @lycori.discription, download_url: @lycori.download_url, extention_category_id: @lycori.extention_category_id, extention_tag_id: @lycori.extention_tag_id, general_setting_id: @lycori.general_setting_id, name: @lycori.name } }
    assert_redirected_to lycori_url(@lycori)
  end

  test "should destroy lycori" do
    assert_difference('Lycori.count', -1) do
      delete lycori_url(@lycori)
    end

    assert_redirected_to lycoris_url
  end
end
