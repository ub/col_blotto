require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :open => false
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input#tournament_open[name=?]", "tournament[open]"
    end
  end
end
