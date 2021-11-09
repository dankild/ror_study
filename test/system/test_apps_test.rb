require "application_system_test_case"

class TestAppsTest < ApplicationSystemTestCase
  setup do
    @test_app = test_apps(:one)
  end

  test "visiting the index" do
    visit test_apps_url
    assert_selector "h1", text: "Test Apps"
  end

  test "creating a Test app" do
    visit test_apps_url
    click_on "New Test App"

    fill_in "Email", with: @test_app.email
    fill_in "First name", with: @test_app.first_name
    fill_in "Last name", with: @test_app.last_name
    fill_in "Phone", with: @test_app.phone
    fill_in "Telegram", with: @test_app.telegram
    click_on "Create Test app"

    assert_text "Test app was successfully created"
    click_on "Back"
  end

  test "updating a Test app" do
    visit test_apps_url
    click_on "Edit", match: :first

    fill_in "Email", with: @test_app.email
    fill_in "First name", with: @test_app.first_name
    fill_in "Last name", with: @test_app.last_name
    fill_in "Phone", with: @test_app.phone
    fill_in "Telegram", with: @test_app.telegram
    click_on "Update Test app"

    assert_text "Test app was successfully updated"
    click_on "Back"
  end

  test "destroying a Test app" do
    visit test_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test app was successfully destroyed"
  end
end
