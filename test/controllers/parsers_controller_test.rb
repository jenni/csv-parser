require 'test_helper'

class ParsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parser = parsers(:one)
  end

  test "should get index" do
    get parsers_url
    assert_response :success
  end

  test "should get new" do
    get new_parser_url
    assert_response :success
  end

  test "should create parser" do
    assert_difference('Parser.count') do
      post parsers_url, params: { parser: { first_name: @parser.first_name, last_name: @parser.last_name } }
    end

    assert_redirected_to parser_url(Parser.last)
  end

  test "should show parser" do
    get parser_url(@parser)
    assert_response :success
  end

  test "should get edit" do
    get edit_parser_url(@parser)
    assert_response :success
  end

  test "should update parser" do
    patch parser_url(@parser), params: { parser: { first_name: @parser.first_name, last_name: @parser.last_name } }
    assert_redirected_to parser_url(@parser)
  end

  test "should destroy parser" do
    assert_difference('Parser.count', -1) do
      delete parser_url(@parser)
    end

    assert_redirected_to parsers_url
  end
end
