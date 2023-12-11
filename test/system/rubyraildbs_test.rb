require "application_system_test_case"

class RubyraildbsTest < ApplicationSystemTestCase
  setup do
    @rubyraildb = rubyraildbs(:one)
  end

  test "visiting the index" do
    visit rubyraildbs_url
    assert_selector "h1", text: "Rubyraildbs"
  end

  test "should create rubyraildb" do
    visit rubyraildbs_url
    click_on "New rubyraildb"

    fill_in "Email", with: @rubyraildb.email
    fill_in "First name", with: @rubyraildb.first_name
    fill_in "Last name", with: @rubyraildb.last_name
    fill_in "Phone", with: @rubyraildb.phone
    fill_in "Twitter", with: @rubyraildb.twitter
    click_on "Create Rubyraildb"

    assert_text "Rubyraildb was successfully created"
    click_on "Back"
  end

  test "should update Rubyraildb" do
    visit rubyraildb_url(@rubyraildb)
    click_on "Edit this rubyraildb", match: :first

    fill_in "Email", with: @rubyraildb.email
    fill_in "First name", with: @rubyraildb.first_name
    fill_in "Last name", with: @rubyraildb.last_name
    fill_in "Phone", with: @rubyraildb.phone
    fill_in "Twitter", with: @rubyraildb.twitter
    click_on "Update Rubyraildb"

    assert_text "Rubyraildb was successfully updated"
    click_on "Back"
  end

  test "should destroy Rubyraildb" do
    visit rubyraildb_url(@rubyraildb)
    click_on "Destroy this rubyraildb", match: :first

    assert_text "Rubyraildb was successfully destroyed"
  end
end
