require "test_helper"

class TerminosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get terminos_index_url
    assert_response :success
  end
end
