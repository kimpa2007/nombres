require 'test_helper'

class NacionalidadControllerTest < ActionDispatch::IntegrationTest
  test "should get nacionalidad" do
    get nacionalidad_nacionalidad_url
    assert_response :success
  end

end
