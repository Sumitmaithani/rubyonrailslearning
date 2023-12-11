require "test_helper"

class RubyraildbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubyraildb = rubyraildbs(:one)
  end

  test "should get index" do
    get rubyraildbs_url
    assert_response :success
  end

  test "should get new" do
    get new_rubyraildb_url
    assert_response :success
  end

  test "should create rubyraildb" do
    assert_difference("Rubyraildb.count") do
      post rubyraildbs_url, params: { rubyraildb: { email: @rubyraildb.email, first_name: @rubyraildb.first_name, last_name: @rubyraildb.last_name, phone: @rubyraildb.phone, twitter: @rubyraildb.twitter } }
    end

    assert_redirected_to rubyraildb_url(Rubyraildb.last)
  end

  test "should show rubyraildb" do
    get rubyraildb_url(@rubyraildb)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubyraildb_url(@rubyraildb)
    assert_response :success
  end

  test "should update rubyraildb" do
    patch rubyraildb_url(@rubyraildb), params: { rubyraildb: { email: @rubyraildb.email, first_name: @rubyraildb.first_name, last_name: @rubyraildb.last_name, phone: @rubyraildb.phone, twitter: @rubyraildb.twitter } }
    assert_redirected_to rubyraildb_url(@rubyraildb)
  end

  test "should destroy rubyraildb" do
    assert_difference("Rubyraildb.count", -1) do
      delete rubyraildb_url(@rubyraildb)
    end

    assert_redirected_to rubyraildbs_url
  end
end
