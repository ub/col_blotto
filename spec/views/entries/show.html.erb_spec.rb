require 'rails_helper'

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :nick => "Nick",
      :r1 => 1,
      :r2 => 2,
      :r3 => 3,
      :r4 => 4,
      :r5 => 5,
      :r6 => 6,
      :tournament => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nick/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
  end
end
