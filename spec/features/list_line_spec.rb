require 'rails_helper'

describe "Viewing the list of My lines of lyrics" do
  it "show lines of lyrics" do
    visit my_lines_url

    expect(page).to have_text("My Lines")
    expect(page).to have_text("Line 1")
    expect(page).to have_text("Line 2")
  end
end