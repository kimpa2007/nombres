require 'test_helper'

class NombreControllerTest < ActionDispatch::IntegrationTest
  test "should get nombre" do
    get nombre_nombre_url
    assert_response :success
  end

end
