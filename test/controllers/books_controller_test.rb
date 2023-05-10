require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get homes" do
    get books_homes_url
    assert_response :success
  end
end
