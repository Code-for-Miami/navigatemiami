require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit locations_url
    # $stderr.write 'Press enter to continue'
    # $stdin.gets
    assert_selector "h1", text: "Location"
  end
end
