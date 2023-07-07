require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  # Get users/1
  test "should show user" do
    get api_v1_user_url(@user), as: :json
    assert_response :success

    ## Test to ensure that the response contains the correct email
    json_response = JSON.parse(self.response.body)
    assert_equal @user.email, json_response['email']
  end

  # Post users/
  test "should create user" do
    assert_difference('User.count') do
      post api_v1_users_url, params: {user: {email: 'test@test.org', password: '123456'}}, as: :json
    end
    assert_response :created
  end

  test "should not create user with taken email" do
    assert_no_difference('User.count') do
      post api_v1_users_url, params: {user: {email: @user.email, password: '123456'}}, as: :json
    end
    assert_response :unprocessable_entity
  end

  # Update/Patch users/1
  test "Should update user" do
    patch api_v1_user_url(@user),
    params: {user: {email: @user.email, password: '123456'}},
    headers: {Authorization: JsonWebToken.encode(user_id: @user.id)},
    as: :json
    assert_response :success
  end

  test "Should forbid update user" do
    patch api_v1_user_url(@user), params: {user: {email: @user.email}}, as: :json
    assert_response :forbidden
  end

  # Delete users/1
  test "Should destroy user" do
    assert_difference('User.count', -1) do
      delete api_v1_user_url(@user), headers: {Authorization: JsonWebToken.encode(user_id: @user.id)}, as: :json
    end
    assert_response :no_content
  end

  test "should forbid destroy user" do
    assert_no_difference('User.count') do
      delete api_v1_user_url(@user), as: :json
    end
    assert_response :forbidden
  end
end
