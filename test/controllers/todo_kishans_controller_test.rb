require "test_helper"

class TodoKishansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_kishan = todo_kishans(:one)
  end

  test "should get index" do
    get todo_kishans_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_kishan_url
    assert_response :success
  end

  test "should create todo_kishan" do
    assert_difference("TodoKishan.count") do
      post todo_kishans_url, params: { todo_kishan: { title: @todo_kishan.title } }
    end

    assert_redirected_to todo_kishan_url(TodoKishan.last)
  end

  test "should show todo_kishan" do
    get todo_kishan_url(@todo_kishan)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_kishan_url(@todo_kishan)
    assert_response :success
  end

  test "should update todo_kishan" do
    patch todo_kishan_url(@todo_kishan), params: { todo_kishan: { title: @todo_kishan.title } }
    assert_redirected_to todo_kishan_url(@todo_kishan)
  end

  test "should destroy todo_kishan" do
    assert_difference("TodoKishan.count", -1) do
      delete todo_kishan_url(@todo_kishan)
    end

    assert_redirected_to todo_kishans_url
  end
end
