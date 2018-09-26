require 'test_helper'

class GroupTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_type = group_types(:one)
  end

  test "should get index" do
    get group_types_url
    assert_response :success
  end

  test "should get new" do
    get new_group_type_url
    assert_response :success
  end

  test "should create group_type" do
    assert_difference('GroupType.count') do
      post group_types_url, params: { group_type: { : @group_type. } }
    end

    assert_redirected_to group_type_url(GroupType.last)
  end

  test "should show group_type" do
    get group_type_url(@group_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_type_url(@group_type)
    assert_response :success
  end

  test "should update group_type" do
    patch group_type_url(@group_type), params: { group_type: { : @group_type. } }
    assert_redirected_to group_type_url(@group_type)
  end

  test "should destroy group_type" do
    assert_difference('GroupType.count', -1) do
      delete group_type_url(@group_type)
    end

    assert_redirected_to group_types_url
  end
end
