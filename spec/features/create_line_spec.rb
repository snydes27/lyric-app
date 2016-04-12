require 'rails_helper'

describe "Creating a new line" do
  it "saves the new line" do
    visit lines_url

    click_link 'Add New Line'

    expect(current_path).to eq(new_line_path)
    
    click_button 'Create Line'

    expect(current_path).to eq(line_path(Line.last))

  end
end