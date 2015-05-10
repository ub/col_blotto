require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :nick => "MyString",
      :r1 => 1,
      :r2 => 1,
      :r3 => 1,
      :r4 => 1,
      :r5 => 1,
      :r6 => 1,
      :tournament => nil
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input#entry_nick[name=?]", "entry[nick]"

      assert_select "input#entry_r1[name=?]", "entry[r1]"

      assert_select "input#entry_r2[name=?]", "entry[r2]"

      assert_select "input#entry_r3[name=?]", "entry[r3]"

      assert_select "input#entry_r4[name=?]", "entry[r4]"

      assert_select "input#entry_r5[name=?]", "entry[r5]"

      assert_select "input#entry_r6[name=?]", "entry[r6]"

      assert_select "input#entry_tournament_id[name=?]", "entry[tournament_id]"
    end
  end
end
