require 'rails_helper'

describe "Editing a line" do
  
  it "updates the line and shows the line's updated details" do
    line = Line.create(line_attributes)
    
    visit line_url(line)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_line_path(line))
    
    expect(find_field('Title').value).to eq(line.title)
  end
  
ends