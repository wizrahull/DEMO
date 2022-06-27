require "application_system_test_case"

class KingsTest < ApplicationSystemTestCase
  setup do
    @king = kings(:one)
  end

  test "visiting the index" do
    visit kings_url
    assert_selector "h1", text: "Kings"
  end

  test "should create king" do
    visit kings_url
    click_on "New king"

    click_on "Create King"

    assert_text "King was successfully created"
    click_on "Back"
  end

  test "should update King" do
    visit king_url(@king)
    click_on "Edit this king", match: :first

    click_on "Update King"

    assert_text "King was successfully updated"
    click_on "Back"
  end

  test "should destroy King" do
    visit king_url(@king)
    click_on "Destroy this king", match: :first

    assert_text "King was successfully destroyed"
  end
end
