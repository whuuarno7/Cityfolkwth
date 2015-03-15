require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get :index
    assert_response :success
  end

>>>>>>> 036601b5e726e6f4fb26fc8a973df283f834d474
end
