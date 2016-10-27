require 'test_helper'

class ParsingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parsing = parsings(:one)
  end

  test "should get index" do
    get parsings_url
    assert_response :success
  end

  test "should get new" do
    get new_parsing_url
    assert_response :success
  end

  test "should create parsing" do
    assert_difference('Parsing.count') do
      post parsings_url, params: { parsing: {  } }
    end

    assert_redirected_to parsing_url(Parsing.last)
  end

  test "should show parsing" do
    get parsing_url(@parsing)
    assert_response :success
  end

  test "should get edit" do
    get edit_parsing_url(@parsing)
    assert_response :success
  end

  test "should update parsing" do
    patch parsing_url(@parsing), params: { parsing: {  } }
    assert_redirected_to parsing_url(@parsing)
  end

  test "should destroy parsing" do
    assert_difference('Parsing.count', -1) do
      delete parsing_url(@parsing)
    end

    assert_redirected_to parsings_url
  end
end
