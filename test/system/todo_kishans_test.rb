require "application_system_test_case"

class TodoKishansTest < ApplicationSystemTestCase
  setup do
    @todo_kishan = todo_kishans(:one)
  end

  test "visiting the index" do
    visit todo_kishans_url
    assert_selector "h1", text: "Todo kishans"
  end

  test "should create todo kishan" do
    visit todo_kishans_url
    click_on "New todo kishan"

    fill_in "Title", with: @todo_kishan.title
    click_on "Create Todo kishan"

    assert_text "Todo kishan was successfully created"
    click_on "Back"
  end

  test "should update Todo kishan" do
    visit todo_kishan_url(@todo_kishan)
    click_on "Edit this todo kishan", match: :first

    fill_in "Title", with: @todo_kishan.title
    click_on "Update Todo kishan"

    assert_text "Todo kishan was successfully updated"
    click_on "Back"
  end

  test "should destroy Todo kishan" do
    visit todo_kishan_url(@todo_kishan)
    click_on "Destroy this todo kishan", match: :first

    assert_text "Todo kishan was successfully destroyed"
  end
end
