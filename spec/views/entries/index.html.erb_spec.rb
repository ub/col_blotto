require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :nick => "Nick",
        :r1 => 1,
        :r2 => 2,
        :r3 => 3,
        :r4 => 4,
        :r5 => 5,
        :r6 => 6,
        :tournament => nil
      ),
      Entry.create!(
        :nick => "Nick",
        :r1 => 1,
        :r2 => 2,
        :r3 => 3,
        :r4 => 4,
        :r5 => 5,
        :r6 => 6,
        :tournament => nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
